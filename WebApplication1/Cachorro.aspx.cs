using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Cachorro : System.Web.UI.Page
    {

        static string local = System.Web.HttpContext.Current.Server.MapPath("~/App_Data/ADSDB.accdb");
        string conexao = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + local + ";Persist Security Info=False;";

        protected void Page_Load(object sender, EventArgs e)
        {

            

        }


        #region Adicionando Pedido
        protected void AddPedido(object sender, EventArgs e)
        {
            string nome = vNome.Text;
            string telefone = vTelefone.Text;
            string email = vEmail.Text;
            string animal = vAnimal.Text;
            string date = DateTime.Today.ToString();


            if (vNome.Text == "")
            {
                mensagem.Text = "Digite um nome...";
                SetFocus(vNome);
            }
            else if (vTelefone.Text == "")
            {
                mensagem.Text = "Digite um Telefone para contato...";
                SetFocus(vTelefone);
            }
            else if (vAnimal.Text == "")
            {
                mensagem.Text = "Escolha o animal que deseja adorar...";
                SetFocus(vAnimal);
            }
            else
            {
                string comando = "INSERT INTO Pedido(Nome,Telefone,Email,Animal,DataPedido)" +
                    "VALUES('"+nome+"','"+telefone+"','"+email+"','"+animal+"','"+date+"');";
                AppDatabase.OleDBTransaction db = new AppDatabase.OleDBTransaction();
                db.ConnectionString = conexao;
                db.Query(comando);

                ClientScript.RegisterStartupScript(this.GetType(), "Pedido", "alert('Pedido realizado com sucesso.');", true);
                vNome.Text = "";
                vTelefone.Text = "";
                vEmail.Text = "";
                vAnimal.Text = "";
                
            }
        }
        #endregion
    }
}