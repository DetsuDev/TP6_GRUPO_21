using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP6_GRUPO_21.Ejercicio2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!IsPostBack) { CargarGridView(); }
        }
        private void CargarGridView()
        {
            Conexion con = new Conexion();
            string consulta = "SELECT IdProducto, NombreProducto, IdProveedor, PrecioUnidad FROM Productos";
            gvProductos.DataSource = con.ObtenerTabla(consulta);
            gvProductos.DataBind();
        }

        protected void gvProductos_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvProductos.PageIndex = e.NewPageIndex;
            CargarGridView();
        }
    }
}