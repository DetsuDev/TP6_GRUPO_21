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
                OnPageIndexChanging="gvProductos_PageIndexChanging" 
                OnRowEditing="gvProductos_RowEditing"
                OnRowCancelingEdit="gvProductos_RowCancelingEdit"
                AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnRowDeleting="gvProductos_RowDeleting" OnSelectedIndexChanged="gvProductos_SelectedIndexChanged">
    
                <Columns>
                    <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" ButtonType="Link" >
                    <HeaderStyle BackColor="#003399" />
                    </asp:CommandField>
                    <asp:TemplateField HeaderText="Id Producto">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("IdProducto") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_it_idProducto" runat="server" Text='<%# Bind("IdProducto") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="NombreProducto" HeaderText="Nombre Producto" >
                    <HeaderStyle BackColor="#003399" ForeColor="White" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CantidadPorUnidad" HeaderText="Cantidad Por Unidad" >
                    <HeaderStyle BackColor="#003399" ForeColor="White" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PrecioUnidad" HeaderText="Precio Unidad" >
                    <HeaderStyle BackColor="#003399" ForeColor="White" />
                    </asp:BoundField>
                </Columns>
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <RowStyle BackColor="White" ForeColor="#003399" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                <SortedDescendingHeaderStyle BackColor="#002876" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>