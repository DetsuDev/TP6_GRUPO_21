<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SeleccionarProductos.aspx.cs" Inherits="TP6_GRUPO_21.Ejercicio2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="gvProductos" runat="server" 
                AllowPaging="True" 
                PageSize="14" 
                OnPageIndexChanging="gvProductos_PageIndexChanging" 
                AutoGenerateColumns="False">
    
                <Columns>
                    <asp:CommandField ShowSelectButton="True" ButtonType="Link" SelectText="Select" />
                    <asp:BoundField DataField="IdProducto" HeaderText="Id Producto" />
                    <asp:BoundField DataField="NombreProducto" HeaderText="Nombre Producto" />
                    <asp:BoundField DataField="IdProveedor" HeaderText="Id Proveedor" />
                    <asp:BoundField DataField="PrecioUnidad" HeaderText="Precio Unidad" />
                </Columns>
            </asp:GridView>

            <asp:HyperLink ID="hlVolver" runat="server" NavigateUrl="Ejercicio2.aspx">Volver al Inicio</asp:HyperLink>
        </div>
    </form>
</body>
</html>
