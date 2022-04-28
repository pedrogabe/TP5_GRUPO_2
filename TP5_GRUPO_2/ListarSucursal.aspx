<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListarSucursal.aspx.cs" Inherits="TP5_GRUPO_2.ListarSucursal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 336px;
        }
        .auto-style3 {
            width: 315px;
        }
        .auto-style4 {
            width: 239px;
        }
        .auto-style6 {
            width: 99px;
        }
        .auto-style7 {
            width: 374px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">
    <asp:HyperLink ID="hlAgregarSucursal" runat="server" NavigateUrl="~/AgregarSucursal.aspx">Agregar Sucursal</asp:HyperLink>
            </td>
            <td class="auto-style3">
    <asp:HyperLink ID="hlListarSucursal" runat="server" NavigateUrl="~/ListarSucursal.aspx">Listado de sucursales</asp:HyperLink>
            </td>
            <td>
    <asp:HyperLink ID="hlEliminarSucursal" runat="server" NavigateUrl="~/EliminarSucursal.aspx">Eliminar sucursal</asp:HyperLink>
            </td>
        </tr>
    </table>
        <br />
        <asp:Label ID="lblTitulo" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Listado de Sucursales"></asp:Label>
        <br />
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">Busqueda ingrese ID Sucursal:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtID" runat="server" Width="212px"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    <asp:Button ID="btnFiltrar" runat="server" Text="Filtrar" />
                </td>
                <td>
                    <asp:Button ID="btnMostrarTodos" runat="server" OnClick="btnMostrarTodos_Click" Text="Mostrar Todos" />
                </td>
            </tr>
        </table>
        <br />
        <asp:GridView ID="gvSucursales" runat="server">
        </asp:GridView>
    </form>
</body>
</html>
