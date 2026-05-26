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
            if (Session["tabla"] == null)
            {
                Session["tabla"] = con.ObtenerTabla(consulta);
                gvProductos.DataSource = (DataTable)Session["tabla"];
                gvProductos.DataBind();
            }
            
            
            ///gvProductos.DataSource = con.ObtenerTabla(consulta);
            ///gvProductos.DataBind();
        }

        protected void gvProductos_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvProductos.PageIndex = e.NewPageIndex;
            CargarGridView();
        }

        protected void gvProductos_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow fila = gvProductos.SelectedRow;

            Producto nuevoProd = new Producto();
            nuevoProd.IdProducto = int.Parse(fila.Cells[1].Text);
            nuevoProd.NombreProducto = fila.Cells[2].Text;
            nuevoProd.IdProveedor = int.Parse(fila.Cells[3].Text);
            nuevoProd.PrecioUnidad = decimal.Parse(fila.Cells[4].Text);

            List<Producto> listaProductos;
            if (Session["Productos"] == null)
            {
                listaProductos = new List<Producto>();
            }
            else
            {
                listaProductos = (List<Producto>)Session["Productos"];
            }

            listaProductos.Add(nuevoProd);
            Session["Productos"] = listaProductos;
            lblProductosAgregados.Text = "Productos agregados: " + nuevoProd.NombreProducto;
        }
    }
}