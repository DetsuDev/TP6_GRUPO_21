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
                DataTable tabla3 = (DataTable)Session["Productos"];


                foreach (DataRow dr in tabla2.Rows)
                {
                    foreach(DataRow dr2 in tabla3.Rows)
                    {
                        if (dr["NombreProducto"] == dr2["NombreProducto"])
                        {
                            dr.Delete();
                            break;
                        }
                    }
                }
            }

        }
    }
}