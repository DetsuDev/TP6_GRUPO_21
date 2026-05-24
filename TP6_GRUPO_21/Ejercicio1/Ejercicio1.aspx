<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio1.aspx.cs" Inherits="TP6_GRUPO_21.Ejercicio1" %>

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
                PageSize="10" 
                OnPageIndexChanging="gvProductos_PageIndexChanging" 
                OnRowEditing="gvProductos_RowEditing"
                OnRowCancelingEdit="gvProductos_RowCancelingEdit"
                AutoGenerateColumns="False">
    
                <Columns>
                    <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" ButtonType="Link" />
                    <asp:BoundField DataField="IdProducto" HeaderText="Id Producto" />
                    <asp:BoundField DataField="NombreProducto" HeaderText="Nombre Producto" />
                    <asp:BoundField DataField="CantidadPorUnidad" HeaderText="Cantidad Por Unidad" />
                    <asp:BoundField DataField="PrecioUnidad" HeaderText="Precio Unidad" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>