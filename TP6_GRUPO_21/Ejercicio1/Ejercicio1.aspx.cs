using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP6_GRUPO_21
{
    public partial class Ejercicio1 : System.Web.UI.Page
    {

        private Conexion conexion = new Conexion();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack) { 


                gvProductos.DataSource = conexion.ObtenerTabla("SELECT IdProducto, NombreProducto, CantidadPorUnidad, PrecioUnidad FROM Productos");
                gvProductos.DataBind();


            }


        }
    }
}