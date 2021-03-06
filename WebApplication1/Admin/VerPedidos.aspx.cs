﻿using System;
using ADSLIB;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Admin
{
    public partial class VerPedidos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ExibirPedidosA();
                ExibirPedidosV();

            }
        }
        // 1. Criar a string de conexão
        // Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\myFolder\myAccessFile.accdb;Persist Security Info=False;
        //caminho virtual:  "~/App_Data/ADSDB.accdb"
        static string local = System.Web.HttpContext.Current.Server.MapPath("~/App_Data/ADSDB.accdb");
        string conexao = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + local + ";Persist Security Info=False;";
       
        #region AREA ADOÇÃO

        public void ExibirPedidosA()
        {
            try
            {
                string comando = "SELECT * FROM Pedido ORDER BY DataPedido;";
                AppDatabase.OleDBTransaction db = new AppDatabase.OleDBTransaction();
                db.ConnectionString = conexao;
                System.Data.DataTable tb = (System.Data.DataTable)db.Query(comando);        
                GridView1.DataSource = tb;
                GridView1.DataBind();
                tb.Dispose();
            }
            catch (Exception ex)
            {
                MensagemA.Text = "Houve uma falha na gravação ";
                // inserir o tratamento da exceção aqui
                RecoverExceptions recupera = new RecoverExceptions();
                recupera.SendEmail = false;
                recupera.SaveException(ex);
            }
        }

        private void deletarA(int codigo)
        {
            string comando = "DELETE FROM Pedido WHERE Codigo="+codigo+";";
            AppDatabase.OleDBTransaction db = new AppDatabase.OleDBTransaction();
            db.ConnectionString = conexao;
            db.Query(comando);
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            
           try
           {
                var script = "if(confirm(\"Deseja Mesmo exclir o pedido?\")){1} else {0};)";
                int id = int.Parse(GridView1.DataKeys[e.RowIndex].Value.ToString());               
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "key", script , true);
                
                deletarA(id);
                ExibirPedidosA();
                
           }
           catch
           {
                 MensagemA.Text = "Houve um erro ao deletar.";
           }

        }
        #endregion

        #region AREA VOLUNTARIO

        public void ExibirPedidosV()
        {
            try
            {
                string comando = "SELECT * FROM Voluntario ORDER BY DataPedido";
                AppDatabase.OleDBTransaction db = new AppDatabase.OleDBTransaction();
                db.ConnectionString = conexao;
                System.Data.DataTable tb = (System.Data.DataTable)db.Query(comando);

                GridView2.DataSource = tb;
                GridView2.DataBind();

                tb.Dispose();
            }
            catch (Exception ex)
            {
                MensagemV.Text = "Houve uma falha na gravação ";
                // inserir o tratamento da exceção aqui
                RecoverExceptions recupera = new RecoverExceptions();
                recupera.SendEmail = false;
                recupera.SaveException(ex);
            }
        }

        private void deletarV(int codigo)
        {
            string comando = "DELETE FROM Voluntario WHERE Codigo=" + codigo + ";";
            AppDatabase.OleDBTransaction db = new AppDatabase.OleDBTransaction();
            db.ConnectionString = conexao;
            db.Query(comando);
        }

        protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                var script = "if(confirm(\"Deseja Mesmo exclir o pedido?\")){1} else {0};)";
                int id = int.Parse(GridView2.DataKeys[e.RowIndex].Value.ToString());
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "key", script, true);

                deletarV(id);
                ExibirPedidosV();
                MensagemV.Text = "";
            }
            catch
            {
                MensagemV.Text = "Houve um erro ao deletar.";
            }
        }
        #endregion
    }
}
