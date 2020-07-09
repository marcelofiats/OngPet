using System;
using System.Web;
using System.Web.Security;

namespace WebApplication1
{
    public partial class Login : System.Web.UI.Page
    {
        // 1. Criar a string de conexão
        // Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\myFolder\myAccessFile.accdb;Persist Security Info=False;
        //caminho virtual:  "~/App_Data/ADSDB.accdb"
        static string local = System.Web.HttpContext.Current.Server.MapPath("~/App_Data/ADSDB.accdb");
        string conexao = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + local + ";Persist Security Info=False;";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Entrar_Click(object sender, EventArgs e)
        {
            if (NomeLogin.Text.Trim() == "")
            {
                Mensagem.Text = "Digite o nome de login";
            }
            else if (Senha.Text.Trim() == "")
            {
                Mensagem.Text = "Digite a senha";
            }
            else
            {
                string comando = "SELECT * FROM Usuarios WHERE login='" + NomeLogin.Text + "' AND Senha='" + Senha.Text + "';";
                AppDatabase.OleDBTransaction db = new AppDatabase.OleDBTransaction();
                db.ConnectionString = conexao;
                System.Data.DataTable tb = (System.Data.DataTable)db.Query(comando);

                if (tb.Rows.Count == 1)
                {
                    Session["NomeCompleto"] = tb.Rows[0]["NomeCompleto"];

                    // Inicializa a classe de autenticação do usuário
                    FormsAuthentication.Initialize();
                    //Define os dados do ticket de autenticação 
                    FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(1, Session["NomeCompleto"].ToString(), DateTime.Now, DateTime.Now.AddMinutes(30), false, Session["NomeCompleto"].ToString(), FormsAuthentication.FormsCookiePath);
                    // Grava o ticket no cookie de autenticação
                    Response.Cookies.Add(new HttpCookie(FormsAuthentication.FormsCookieName, FormsAuthentication.Encrypt(ticket)));

                    Response.Redirect("~/Default.aspx");
                }
                else
                {
                    Mensagem.Text = "Dados de acesso invalidos";
                }
            }
        }
    }
}