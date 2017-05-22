<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="compraviajes.aspx.cs" Inherits="planviajes.compraviajes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #FFFFFF;
            font-size: x-large;
            background-color: #000099;
        }
        .auto-style2 {
            margin-top: 0px;
        }
        .auto-style3 {
            color: #0066FF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table width="100%">
             <tr>
                  <td class="auto-style1">
                      <strong>AGENCIA DE VIAJES SOUTH TRAVEL
</strong>
</td>
                 
                </tr>
            
              <tr>
                  <td>
                      <strong>PLANES VIAJE
</strong>
</td>
                 
                </tr>
            <tr>
                 <td>
                      <strong>
                      <asp:DropDownList ID="Planes" runat="server" OnSelectedIndexChanged="Planes_SelectedIndexChanged" AutoPostBack="True">
                          <asp:ListItem>PLANES</asp:ListItem>
                          <asp:ListItem>SAN ANDRES</asp:ListItem>
                          <asp:ListItem>SANTA MARTA</asp:ListItem>
                          <asp:ListItem>CARTAGENA</asp:ListItem>
                      </asp:DropDownList>
                      </strong>
                  </td>
            </tr>
            <tr>
                <td>
                    <strong>Valor Plan   <asp:Label ID="Valorplan" runat="server" Text="Label"></asp:Label>

                    </strong>

                </td>
            </tr>
             <tr>
                <td>
                    <strong>Cantidad de personas <asp:TextBox ID="Cantidadpersonas" runat="server"></asp:TextBox>

                    </strong>

                </td>
            </tr>
             <tr>
                <td>
                    <strong>
                    <asp:Button ID="Calcular" runat="server" Text="Calcular" OnClick="Calcular_Click" />  Valor total <asp:Label ID="Valortotal" runat="server" Text="Label"></asp:Label>

                    </strong>

                </td>
            </tr>
             <tr>
                <td>
                    <strong>
                    <asp:Button ID="Pagar" runat="server" Text="Pagar" OnClick="Pagar_Click" />

                    </strong>

                </td>
            </tr>
             <tr>
                <td>
                    <strong>
                    <img src="capturas/cartagena.PNG" class="auto-style2" /></strong> <strong>
                     <img src="capturas/santamarta.PNG" /></strong> <strong>
                    <img src="capturas/sanandres.PNG" />

                    </strong>

                    </td>
            </tr>
            <tr>
                <td>
                    <p> <strong>CARTAGENA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                   SANTA MARTA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SAN ANDRES
                 <br /> VALOR= 300&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; VALOR= 400&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; VALOR= 500            </strong>            </p>

                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <strong>TODOS LOS PLANES INCLUYEN= TRANSPORTE AEREO, TRANSLADO AEROPUERTO-HOTEL-AEROPUERTO-ESTADIA TRES DIAS DOS NOCHES Y ALIMENTACIÓN COMPLETA</strong></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
