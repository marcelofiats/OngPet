using ADSLIB;
using System;
using System.Web.UI.WebControls;

namespace WebApplication1.Admin
{
    public partial class InserirUsuarios : System.Web.UI.Page
    {

        // 1. Criar a string de conexão
        // Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\myFolder\myAccessFile.accdb;Persist Security Info=False;
        //caminho virtual:  "~/App_Data/ADSDB.accdb"
        static string local = System.Web.HttpContext.Current.Server.MapPath("~/App_Data/ADSDB.accdb");
        string conexao = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + local + ";Persist Security Info=False;";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ExibirUsuarios();
            }
        }

        #region SALVAR E EDITAR OS DADOS

        protected void Salvar_Click(object sender, EventArgs e)
        {
            try
            {
                if (NomeCompleto.Text.Trim() == "")
                {
                    Mensagem.Text = "O Nome deve ser digitado";
                    SetFocus(NomeCompleto);
                }
                else if (Login.Text.Trim() == "")
                {
                    Mensagem.Text = "O Login deve ser digitado";
                    SetFocus(Login);
                }
                else if (Senha.Text.Trim() == "")
                {
                    Mensagem.Text = "A senha deve ser digitada";
                    SetFocus(Senha);
                }
                else
                {
                    string comando = "";

                    if (Codigo.Text == "")
                    {
                        // 2. criar a string de comando sql para inserir o registro
                        comando = "INSERT INTO Usuarios(NomeCompleto,Login,Senha,Anotacoes) VALUES('" + NomeCompleto.Text + "','" + Login.Text + "','" + Senha.Text + "','" + Anotacoes.Text + "');";
                    }
                    else
                    {
                        // 2. cria a string de comando para editar o registro indicado em Codigo.Text
                        comando = "UPDATE Usuarios SET NomeCompleto='" + NomeCompleto.Text + "',Login='" + Login.Text + "',Senha='" + Senha.Text + "',Anotacoes='" + Anotacoes.Text + "' WHERE Codigo=" + Codigo.Text;
                    }
                    // 3. CONECTAR NO BANCO DE DADOS E ENVIAR O COMANDO
                    AppDatabase.OleDBTransaction db = new AppDatabase.OleDBTransaction();
                    db.ConnectionString = conexao;
                    String user = Login.Text;

                    if (validarUsuario(user) == true)
                    {
                        db.Query(comando);
                        limpaCampos();
                        Excluir.Visible = false;
                        ExibirUsuarios();
                    }
                    else
                    {
                        Mensagem.Text = "O nome de Login ja existe, Por favor escolha outro";
                        SetFocus(Login);
                    }
                }
            }
            catch (Exception ex)
            {
                Mensagem.Text = "Houve uma falha na gravação ";
                // inserir o tratamento da exceção aqui
                RecoverExceptions recupera = new RecoverExceptions();
                recupera.SendEmail = false;
                recupera.SaveException(ex);
            }

        }

        #endregion

        #region EXIBIR OS DADOS DA TABELA USUÁRIO

        protected void ExibirUsuarios()
        {
            try
            {
                string comando = "SELECT Codigo, NomeCompleto, Login FROM Usuarios ORDER BY NomeCompleto";
                AppDatabase.OleDBTransaction db = new AppDatabase.OleDBTransaction();
                db.ConnectionString = conexao;
                System.Data.DataTable tb = (System.Data.DataTable)db.Query(comando);

                Usuarios.DataSource = tb;
                Usuarios.DataBind();

                tb.Dispose();
            }
            catch (Exception ex)
            {
                Mensagem.Text = "Houve uma falha na gravação ";
                // inserir o tratamento da exceção aqui
                RecoverExceptions recupera = new RecoverExceptions();
                recupera.SendEmail = false;
                recupera.SaveException(ex);
                UpdatePanel.Update();
            }

        }

        protected void Usuarios_SelectedIndexChanged(object sender, EventArgs e)
        {
            Codigo.Text = Usuarios.SelectedRow.Cells[1].Text;

            string comando = "SELECT * FROM Usuarios WHERE Codigo=" + Codigo.Text;
            AppDatabase.OleDBTransaction db = new AppDatabase.OleDBTransaction();
            db.ConnectionString = conexao;
            System.Data.DataTable tb = (System.Data.DataTable)db.Query(comando);

            if (tb.Rows.Count == 1)
            {
                NomeCompleto.Text = tb.Rows[0]["NomeCompleto"].ToString();
                Login.Text = tb.Rows[0]["Login"].ToString();
                Senha.Text = tb.Rows[0]["Senha"].ToString();
                Anotacoes.Text = tb.Rows[0]["Anotacoes"].ToString();
                Excluir.Visible = true;
            }
            tb.Dispose();
        }

        protected void Buscar_Click(object sender, EventArgs e)
        {
            string comando = "SELECT Codigo, NomeCompleto, Login FROM Usuarios WHERE NomeCompleto + Login LIKE '%" + BuscarUsuario.Text + "%'";
            AppDatabase.OleDBTransaction db = new AppDatabase.OleDBTransaction();
            db.ConnectionString = conexao;
            System.Data.DataTable tb = (System.Data.DataTable)db.Query(comando);

            Usuarios.DataSource = tb;
            Usuarios.DataBind();
            Cancelar.Visible = true;
            tb.Dispose();
        }

        protected void Cancelar_Click(object sender, EventArgs e)
        {
            BuscarUsuario.Text = "";
            ExibirUsuarios();
            Cancelar.Visible = false;
        }
        #endregion

        #region EXCLUI UM REGISTRO DO BANCO DE DADOS

        protected void Excluir_Click(object sender, EventArgs e)
        {
            
            string comando = "DELETE FROM usuarios WHERE codigo=" + Codigo.Text + ";";
            AppDatabase.OleDBTransaction db = new AppDatabase.OleDBTransaction();
            db.ConnectionString = conexao;           
            db.Query(comando);
            limpaCampos();
            ExibirUsuarios();
        }
        #endregion

        #region LIMPAR CAMPOS

        public void limpaCampos()
        {
            Codigo.Text = "";
            NomeCompleto.Text = "";
            Login.Text = "";
            Senha.Text = "";
            Anotacoes.Text = "";
            Mensagem.Text = "";
            Excluir.Visible = false;
        }

        #endregion

        #region VERIFICA SE O USUARIO DIGITADO JA EXISTE
        public bool validarUsuario(string usuario)
        {
            string comando = "SELECT * FROM Usuarios WHERE login ='"+usuario+"';";

            AppDatabase.OleDBTransaction db = new AppDatabase.OleDBTransaction();
            db.ConnectionString = conexao;
            System.Data.DataTable tb = (System.Data.DataTable)db.Query(comando);
            if(tb.Rows.Count > 0)
            {
                if(tb.Rows[0]["Codigo"].ToString() == Codigo.Text)
                {
                    return true;
                }
                return false;
            }
            else
            {
                return true;
            }   

        }
        #endregion

    }


}
