using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace planviajes
{
    public partial class Banco : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack != true)
            {
                Label1.Text = " Por favor confirme su solicitud de pago";
                Labelidf.Text = "";
                Labelnom.Text = "";
                Labeltot.Text = "";
            }
        }
                    
                
         //   }
        

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["cliente"] != null)
            {
                List<Class1> nuevoCliente = ((List<Class1>)Session["cliente"]);
                
                
                foreach (Class1 item in nuevoCliente)
                {

                    //   if (item.Nombrecli != null)
                    // {

                    string nom = item.Nombrecli;
                    int id = item.Idcli;
                    int pwc = item.pwcli;
                    int tot = item.Valorpago;
                    Random r = new Random();
                    int aleatorio2 = r.Next(000,999);

                    using (BancoEntities1 conexion = new BancoEntities1())

                    {
                        Clientes verificar = conexion.Clientes.Where(w => w.Cedula == id).SingleOrDefault();
                        if (verificar.Nombre == nom)
                        {
                            if (verificar.Cedula == id)
                            {
                                if (verificar.Clave == pwc)
                                {


                                    if (verificar.Totalfondos >= tot)
                                    {
                                        Label1.Text = "Pago exitoso";
                                        Labelidf.Text = "Factura N° " + aleatorio2;
                                        Labelnom.Text = "Nombre Cliente: "+nom;
                                        Labeltot.Text ="Total pagado: "+ tot.ToString();


                                       verificar.Totalfondos = verificar.Totalfondos - tot;
                                        conexion.SaveChanges();

                                    }

                                    else if (verificar.Totalfondos < tot)
                                    {
                                        Label1.Text = "Usted No tiene fondos suficientes para esta transacción";
                                    }
                                }
                            }
                        }
                        else
                        {
                            Label1.Text = "Los datos son incorrectos";
                        }
                        
                        
                    }


                    //       }

                }

            }

        }
    }
}
