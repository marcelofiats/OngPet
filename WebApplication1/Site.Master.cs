using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["NomeCompleto"] != null)
            {
                NomeCompleto.Text = Session["NomeCompleto"].ToString();

                ViewExceptions.Visible = true;
                VerPedidos.Visible = true;
                InserirUsuarios.Visible = true;
                Entrar.Visible = false;
                Sair.Visible = true;
            }
            else
            {
                ViewExceptions.Visible = false;
                VerPedidos.Visible = false;
                InserirUsuarios.Visible = false;
                Entrar.Visible = true;
                Sair.Visible = false;
            }
        }
    }
}