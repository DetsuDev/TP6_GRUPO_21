<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="TP6_GRUPO_21.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 154px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1" style="font-size: x-large; font-weight: bold">Grupo N°21</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:HyperLink ID="hlEjercicio1" runat="server" Font-Underline="True" ForeColor="Blue" NavigateUrl="Ejercicio1/Ejercicio1.aspx">Ejercicio 1</asp:HyperLink>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:HyperLink ID="hlEjercicio2" runat="server" Font-Underline="True" ForeColor="Blue" NavigateUrl="Ejercicio2/Ejercicio2.aspx">Ejercicio 2</asp:HyperLink>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
