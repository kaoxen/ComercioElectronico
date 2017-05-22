<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pagos.aspx.cs" Inherits="Pagosonline.pagos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
        <tr>
            <td>
                PAGOS
            </td>
        </tr>
         <tr>
            <td>
                NOMBRE <asp:TextBox ID="nombre" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>
               IDENTIFICACION <asp:TextBox ID="cedula" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>
                CONTRASEÑA <asp:TextBox ID="clave" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>
                TOTAL A PAGAR: <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
         <tr>
            <td>
                <asp:Button ID="Pagar" runat="server" Text="PAGAR" OnClick="Pagar_Click" />
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
