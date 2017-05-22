using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace planviajes
{
    public partial class pagoslinea1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                Label1.Text = Request.QueryString["valtot"];
            }
        }

        protected void Pagar_Click(object sender, EventArgs e)
        {
            List<Class1> miLista = new List<Class1>();

            Class1 nuevoCliente = new Class1();
            nuevoCliente.Nombrecli = nombre.Text;
            nuevoCliente.Idcli = Convert.ToInt32(cedula.Text);
            nuevoCliente.pwcli = Convert.ToInt32(clave.Text);
            nuevoCliente.Valorpago = Convert.ToInt32(Label1.Text);

            miLista.Add (nuevoCliente);
          
            Session["cliente"] = miLista;

            Response.Redirect("Banco.aspx");
        }
    }
}
