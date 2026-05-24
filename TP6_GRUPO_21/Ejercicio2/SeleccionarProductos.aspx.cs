using System;
using System.Collections.Generic;
using System.Data;
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

        protected void gvProductos_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow fila = gvProductos.SelectedRow;
            int idProducto = int.Parse(fila.Cells[1].Text);
            string nombreProducto = fila.Cells[2].Text;
            int idProveedor = int.Parse(fila.Cells[3].Text);
            decimal precioUnidad = decimal.Parse(fila.Cells[4].Text);

            DataTable productosSeleccionados;
            if (Session["Productos"] == null)
            {
                productosSeleccionados = new DataTable();
                productosSeleccionados.Columns.Add("IdProducto", typeof(int));
                productosSeleccionados.Columns.Add("NombreProducto", typeof(string));
                productosSeleccionados.Columns.Add("IdProveedor", typeof(int));
                productosSeleccionados.Columns.Add("PrecioUnidad", typeof(decimal));
            }
            else
            {
                productosSeleccionados = (DataTable)Session["Productos"];
            }

          
            productosSeleccionados.Rows.Add(idProducto, nombreProducto, idProveedor, precioUnidad);
            Session["Productos"] = productosSeleccionados;
            lblProductosAgregados.Text = "Productos agregados: " + nombreProducto;
        }
    }
}