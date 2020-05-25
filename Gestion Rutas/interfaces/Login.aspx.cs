using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gestion_Rutas
{
    public partial class Login : System.Web.UI.Page
    {
        RutaBDDataContext db = new RutaBDDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed5_Click(object sender, EventArgs e)
        {
            if(!txtUsuario.Text.Equals(""))
            {
                try
                {
                    var user = (from s in db.Usuario where s.usuario_ == txtUsuario.Text select s).First();
                    if (!txtcontra.Text.Equals(""))
                    {
                        if (user.contraseña_usuario == txtcontra.Text && user.estado_usuario == 1)
                        {
                            Response.Redirect("Home.aspx?id=" + user.id_usuario);
                        }
                        else
                        {
                            lblmjs.Text = "Error al autentificar usuario";
                        }
                    }
                }
                catch
                {
                    lblmjs.Text = "El usuario no existe";
                    
                }
            }
            else
            {
                lblmjs.Text = "Ingrese sus datos";
            }          
        }

        protected void Unnamed4_Click(object sender, EventArgs e)
        {

        }
    }
}