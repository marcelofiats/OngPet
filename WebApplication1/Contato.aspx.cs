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
												// CODIGO EXECUTADO QUANDO CLICAR NO BOTÃO ENVIAR

												//1. CRIAR A MENSAGEM DE E-MAIL
												MailMessage email = new MailMessage();
												email.IsBodyHtml = false;
												email.Subject = "Fale conosco";
												email.To.Add("contato@seudominio.com.br");
												MailAddress from = new MailAddress("contato@seudominio.com.br");
												email.From = from;
												email.Body = "MENSAGEM ENVIADA\n\r";
												email.Body += "Nome     : " + SeuNome.Text + "\n\r";
												email.Body += "Email    : " + SeuEmail.Text + "\n\r";
												email.Body += "Mensagem : " + Mensagem.Text + "\n\r";

												//2. ENVIAR O EMAIL VIA SMTP
												SmtpClient smtp = new SmtpClient();
												smtp.Host = "smtp.seudominio.com.br";
												smtp.Port = 587;
												smtp.EnableSsl = false;
												smtp.Credentials = new NetworkCredential("contato@seudominio.com.br", "sua senha");
												// ENVIA O EMAIL
												smtp.Send(email);
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
			}
}