<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EliminarSucursal.aspx.cs" Inherits="TP5_GRUPO_2.EliminarSucursal" %>

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
            width: 291px;
        }
        .auto-style3 {
            width: 128px;
        }
        .auto-style4 {
            width: 397px;
        }
        .auto-style5 {
            width: 259px;
        }
        .auto-style7 {
            width: 18%;
            height: 61px;
        }
    </style>
</head>
<body style="height: 286px">
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:HyperLink ID="hlAgregarSucursal" runat="server" NavigateUrl="~/AgregarSucursal.aspx">Agregar sucursal</asp:HyperLink>
                    </td>
                    <td class="auto-style5">
                        <asp:HyperLink ID="hlListarSucursal" runat="server" NavigateUrl="~/ListarSucursal.aspx">Listado de sucursales</asp:HyperLink>
                    </td>
                    <td>
                        <asp:HyperLink ID="hlEliminarSucursal" runat="server" NavigateUrl="~/EliminarSucursal.aspx">Eliminar sucursal</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div>
        <p>
            <asp:Label ID="lblEliminarS" runat="server" Font-Bold="True" Font-Size="18pt" Text="Eliminar sucursales"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblIDEliminar" runat="server" Text="Ingrese ID sucursal:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtEliminarID" runat="server" Width="378px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="btnEliminarID" runat="server" Text="Eliminar" OnClick="btnEliminarID_Click" />
                &nbsp;<asp:RegularExpressionValidator ID="revEliminar" runat="server" ControlToValidate="txtEliminarID" ErrorMessage="Solo puede ingresar numeros" ValidationExpression="^\d+$">*</asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="rfvEliminar" runat="server" ControlToValidate="txtEliminarID" ErrorMessage="Debe ingresar algun valor">*</asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
    &nbsp;&nbsp;<table class="auto-style7">
            <tr>
                <td>
                    <asp:ValidationSummary ID="vsEliminar" runat="server" Height="48px" Width="224px" />
                </td>
            </tr>
        </table>
            <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
        <br />
        <br />
        <br />
&nbsp;</form>
</body>
</html>
