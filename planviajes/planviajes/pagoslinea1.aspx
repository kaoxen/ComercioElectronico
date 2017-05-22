<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pagoslinea1.aspx.cs" Inherits="planviajes.pagoslinea1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #FFFFFF;
            background-color: #000099;
        }
        .auto-style2 {
            color: #000000;
            font-size: x-large;
            background-color: #FF0000;
        }
        .auto-style3 {
            color: #FFFFFF;
            font-weight: bold;
            background-color: #000099;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <table>
        <tr>
            <td class="auto-style1">
                <strong><span class="auto-style2">SISTEMA DE PAGOS EN LINEA SERPAGOS
            </span></strong>
            </td>
        </tr>
         <tr>
            <td>
                <strong>POR FAVOR INGRESE SUS DATOS
            </strong>
            </td>
        </tr>
         <tr>
            <td>
                <strong>NOMBRE</strong> <asp:TextBox ID="nombre" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>
                <strong>IDENTIFICACION</strong> <asp:TextBox ID="cedula" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>
                <strong>CONTRASEÑA</strong> <asp:TextBox ID="clave" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>
                <strong>TOTAL A PAGAR</strong>: <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
         <tr>
            <td>
                <strong>
                <asp:Button ID="Pagar" runat="server" Text="PAGAR" OnClick="Pagar_Click" CssClass="auto-style3" />
                </strong>
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
