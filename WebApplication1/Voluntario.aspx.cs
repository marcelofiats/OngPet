using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        static string local = System.Web.HttpContext.Current.Server.MapPath("~/App_Data/ADSDB.accdb");
        string conexao = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + local + ";Persist Security Info=False;";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string vnome = nome.Text;
                string vendereco = endereco.Text;
                string vtelefone = telefone.Text;
                string vemail = email.Text;
                string varea = area.Text;
                string date = DateTime.Today.ToString();


                if (vnome == "")
                {
                    Mensagem.Text = "Digite um nome...";
                    SetFocus(nome);
                }
                else if (vtelefone == "")
                {
                    Mensagem.Text = "Digite um Telefone para contato...";
                    SetFocus(telefone);
                }
                else if (vendereco == "")
                {
                    Mensagem.Text = "Digite o endereço...";
                    SetFocus(endereco);
                }
                else if (varea == "")
                {
                    Mensagem.Text = "Escolha a Area Desejada...";
                    SetFocus(area);
                }
                else
                {
                    string comando = "INSERT INTO Voluntario(Nome,Telefone,Email,Endereco,Area,DataPedido)" +
                        "VALUES('" + vnome + "','" + vtelefone + "','" + vemail + "','" + endereco + "','" + varea + "','" + date + "');";
                    AppDatabase.OleDBTransaction db = new AppDatabase.OleDBTransaction();
                    db.ConnectionString = conexao;
                    db.Query(comando);

                    ClientScript.RegisterStartupScript(this.GetType(), "Pedido", "alert('Pedido realizado com sucesso.');", true);
                    nome.Text = "";
                    telefone.Text = "";
                    email.Text = "";
                    area.Text = "";
                    Mensagem.Text = "";
                }
            }
            catch
            {
                Mensagem.Text = "Erro ao Gravar!!!";
            }
        }
    }
}