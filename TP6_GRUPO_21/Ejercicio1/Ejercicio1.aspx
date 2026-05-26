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
                            <asp:Label ID="lbl_edit_idProducto" runat="server" Text='<%# Bind("IdProducto") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_it_idProducto" runat="server" Text='<%# Bind("IdProducto") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Nombre Producto">
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_edit_Nombre" runat="server" Text='<%# Bind("NombreProducto") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txt_edit_Nombre" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_it_Nombre" runat="server" Text='<%# Bind("NombreProducto") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle BackColor="#003399" ForeColor="White" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Cantidad Por Unidad">
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_edit_Cantidad" runat="server" Text='<%# Bind("CantidadPorUnidad") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvCantidad" runat="server" ControlToValidate="txt_edit_Cantidad" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_it_Cantidad" runat="server" Text='<%# Bind("CantidadPorUnidad") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle BackColor="#003399" ForeColor="White" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Precio Unidad">
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_edit_Precio" runat="server" Text='<%# Bind("PrecioUnidad") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvPrecio" runat="server" ControlToValidate="txt_edit_Precio" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_it_Precio" runat="server" Text='<%# Bind("PrecioUnidad") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle BackColor="#003399" ForeColor="White" />
                    </asp:TemplateField>
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