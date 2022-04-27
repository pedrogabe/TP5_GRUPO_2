<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarSucursal.aspx.cs" Inherits="TP5_GRUPO_2.Ejercicio1" %>

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
            width: 213px;
        }
        .auto-style5 {
            width: 211px;
        }
        .auto-style6 {
            width: 799px;
        }
        .auto-style7 {
            width: 108%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="hlAgregarSucursal" runat="server" NavigateUrl="~/AgregarSucursal.aspx">Agregar Sucursal</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td class="auto-style3">
                        <asp:HyperLink ID="hlListarSucursal" runat="server" NavigateUrl="~/ListarSucursal.aspx">Listado de sucursales</asp:HyperLink>
                    </td>
                    <td>
                        <asp:HyperLink ID="hlEliminarSucursal" runat="server" NavigateUrl="~/EliminarSucursal.aspx">Eliminar sucursal</asp:HyperLink>
                    </td>
                </tr>
            </table>
            <br />
            <asp:Label ID="lblGrupo" runat="server" Font-Bold="True" Font-Size="20pt" Text="GRUPO N°"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
            <br />
            <table class="auto-style7">
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblAgregarSuc" runat="server" Font-Bold="True" Font-Size="18pt" Text="Agregar sucursal"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblNombreSuc" runat="server" Text="Nombre sucursal:"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtNombre" runat="server" Width="492px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre" EnableClientScript="False" ErrorMessage="RequiredFieldValidator">No se agregó un nombre de sucursal</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblDescripcionS" runat="server" Text="Descripción:"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtDescripcion" runat="server" Width="492px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvDescripcion" runat="server" ControlToValidate="txtDescripcion" EnableClientScript="False">No se agregó una descripción</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblProvinciaS" runat="server" Text="Provincia:"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:DropDownList ID="ddlProvinciaS" runat="server" Width="499px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblDireccionS" runat="server" Text="Dirección:"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtDireccion" runat="server" Width="492px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" ControlToValidate="txtDireccion" EnableClientScript="False" ErrorMessage="RequiredFieldValidator">No se agregó una dirección</asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5">
                        <br />
                        <br />
                    </td>
                    <td>
                        <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
