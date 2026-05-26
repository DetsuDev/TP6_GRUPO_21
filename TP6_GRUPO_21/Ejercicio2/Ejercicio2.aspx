<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio2.aspx.cs" Inherits="TP6_GRUPO_21.Ejercicio2.Ejercicio2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Inicio</h2>
            <ul>
                <li><asp:HyperLink ID="hlSeleccionar" runat="server" NavigateUrl="SeleccionarProductos.aspx">Seleccionar Productos</asp:HyperLink></li>
                <li><asp:LinkButton ID="lbEliminar" runat="server" OnClick="lbEliminar_Click">Eliminar productos seleccionados</asp:LinkButton></li>
                <li><asp:HyperLink ID="hlMostrar" runat="server" NavigateUrl="MostrarProductos.aspx">Mostrar Productos</asp:HyperLink></li>
            </ul>
        </div>
    </form>
</body>
</html>
