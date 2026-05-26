using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP6_GRUPO_21.Ejercicio2
{
    public partial class Ejercicio2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbEliminar_Click(object sender, EventArgs e)
        {
            if ((Session["tabla"] != null) && (Session["Productos"] != null))
            {
                DataTable tabla2 = (DataTable)Session["tabla"];
                List<Producto> tabla3 = (List<Producto>)Session["Productos"];


                foreach (DataRow dr in tabla2.Rows)
                {
                    foreach(var dr2 in tabla3)
                    {
                        if ((string)dr["NombreProducto"] == dr2.NombreProducto)
                        {
                            dr.Delete();
                            break;
                        }
                    }
                }
                tabla2.AcceptChanges();

                Session["tabla"] = tabla2;
                Session["productos"] = null;
            }



        }
    }
}