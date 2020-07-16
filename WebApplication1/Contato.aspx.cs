using ADSLIB;
using System;
using System.Net;
using System.Net.Mail;

namespace WebApplication1
{
    public partial class Contato : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Enviar_Click(object sender, EventArgs e)
        {
            // COLOCAR O CÓDIGO PARA ENVIAR O EMAIL
            // Ref: http://msdn.com.br (WEB C# enviar email) 

            try
            {
                if (ValidarCampos() == false)
                {

                }
                else
                {
                    // CODIGO EXECUTADO QUANDO CLICAR NO BOTÃO ENVIAR
                    //1. CRIAR A MENSAGEM DE E-MAIL
                    MailMessage email = new MailMessage();
                    email.IsBodyHtml = false;
                    email.Subject = "Fale conosco";
                    email.To.Add("marcelo.fiats@gmail.com");
                    MailAddress from = new MailAddress("marcelo.fiats@gmail.com");
                    email.From = from;
                    email.Body = "MENSAGEM ENVIADA\n\r";
                    email.Body += "Nome     : " + SeuNome.Text + "\n\r";
                    email.Body += "Email    : " + SeuEmail.Text + "\n\r";
                    email.Body += "Mensagem : " + Mensagem.Text + "\n\r";

                    //2. ENVIAR O EMAIL VIA SMTP
                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = "smtp.gmail.com";
                    smtp.Port = 587;
                    smtp.EnableSsl = true;
                    smtp.Credentials = new NetworkCredential("marcelo.fiats@gmail.com","fiatssilva");
                    smtp.Send(email);
                    System.Web.UI.ScriptManager.RegisterClientScriptBlock(this, GetType(), "key", "alert('Obrigado por entrar em contato conosco, em breve você recebera nosso contato');", true);
                    // ENVIA O EMAIL                    
                    LimpaCampo();
                }
            }
            catch (Exception ex)
            {
                Erro.Text = "Hove uma falha ao tentar enviar o email ";
                // inserir o tratamento da exceção aqui
                RecoverExceptions recupera = new RecoverExceptions();
                //recupera.PathSaveFile = "~/exxxx.txt";
                recupera.SendEmail = false;
                recupera.SaveException(ex);
            }
        }
        public void LimpaCampo()
        {
            SeuNome.Text = "";
            SeuEmail.Text = "";
            Mensagem.Text = "";
            Erro.Text = "";
        }

        public bool ValidarCampos()
        {
            if(SeuNome.Text == "")
            {
                Erro.Text = "Digite um nome...";
                SetFocus(SeuNome);
                return false;
            }
            else if(SeuEmail.Text == "")
            {
                Erro.Text = "Digite um E-mail Valido...";
                SetFocus(SeuEmail);
                return false;
            }
            else if(Mensagem.Text == "")
            {
                Erro.Text = "Digite uma mensagem...";
                SetFocus(SeuEmail);
                return false;
            }
            return true;
        
        }
    }
}