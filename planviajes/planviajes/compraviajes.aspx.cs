using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace planviajes
{
    public partial class compraviajes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                Valorplan.Text="" ;
                Valortotal.Text = "";
            }
        }


        protected void Pagar_Click(object sender, EventArgs e)
        {
            int valtot = Convert.ToInt32(Valortotal.Text);
            Response.Redirect("pagoslinea1.aspx?valtot="+ valtot);
        }

        protected void Calcular_Click(object sender, EventArgs e)

        {
            
            int valor = Convert.ToInt32(Valorplan.Text);
            int cantidad = Convert.ToInt32(Cantidadpersonas.Text);
            int total = valor * cantidad;
            Valortotal.Text = total.ToString();

        }

        protected void Planes_SelectedIndexChanged(object sender, EventArgs e)
        {
            int valorplan = 0;
           
            Valortotal.Text = "";
            if (Planes.Text == "SAN ANDRES")
            {
                valorplan = 500;
            }
            else if (Planes.Text == "SANTA MARTA")
            {
                valorplan = 400;
            }
            else if (Planes.Text == "CARTAGENA")
            {
                valorplan = 300;
            }
            Valorplan.Text = valorplan.ToString();
        }

    }
}