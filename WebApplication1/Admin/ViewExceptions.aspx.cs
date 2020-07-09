using ADSLIB;
using System;

namespace WebApplication1.Admin
{
			public partial class ViewExceptions : System.Web.UI.Page
			{
						protected void Page_Load(object sender, EventArgs e)
						{
									// aqui voce vao ler o arquivo log.txt e colocar o conteúdo lido do controle Resultado.Text
									RecoverExceptions re = new RecoverExceptions();
									Resultado.Text = re.LoadExceptions().Replace("\n","<br/>");
						}
			}
}