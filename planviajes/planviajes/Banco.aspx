<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Banco.aspx.cs" Inherits="planviajes.Banco" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #FFFF66;
            font-size: xx-large;
            background-color: #0066FF;
        }
        .auto-style2 {
            font-weight: bold;
            color: #FFFFFF;
            background-color: #000066;
        }
        .auto-style3 {
            font-size: large;
        }
        .auto-style4 {
            background-color: #FFFF99;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
        <tr>
            <td colspan="3" class="auto-style1">
                <strong>BANCO DE MEDELLIN
            </strong>
            </td>
            </tr>
        <tr>
            <td class="auto-style4">
                <strong>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </strong>
            </td>
            </tr>
        <tr>
            <td>
                
                <strong>
                
                <asp:Button ID="Button1" runat="server" Text="Confirmar Pago" OnClick="Button1_Click" CssClass="auto-style2" />
                </strong>
            </td>
            </tr>
       
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" DataKeyNames="Cedula" Visible="False"  >
                    <Columns>
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                        <asp:BoundField DataField="Cedula" HeaderText="Cedula" SortExpression="Cedula" ReadOnly="True" />
                        <asp:BoundField DataField="Clave" HeaderText="Clave" SortExpression="Clave" />
                        <asp:BoundField DataField="Totalfondos" HeaderText="Totalfondos" SortExpression="Totalfondos" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BancoConnectionString %>" SelectCommand="SELECT [Nombre], [Cedula], [Clave], [Totalfondos] FROM [Clientes]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BancoConnectionString %>" SelectCommand="SELECT [Nombre], [Cedula], [Clave], [Totalfondos] FROM [Clientes]"></asp:SqlDataSource>
            </td>
        </tr>
         <tr>
            <td class="auto-style3">  
                              
                <strong>  
                              
                <asp:Label ID="Labelidf" runat="server" Text="Label" CssClass="auto-style3"></asp:Label>
               
                </strong>
               
              </td>
             </tr>
             <tr>
             <td class="auto-style3">
                  <strong>
                  <asp:Label ID="Labelnom" runat="server" Text="Label" CssClass="auto-style3"></asp:Label> 
                   
                  </strong> 
                   
             </td>
                 </tr>
        <tr>

             <td class="auto-style3">
                 <strong>
               <asp:Label ID="Labeltot" runat="server" Text="Label" CssClass="auto-style3"></asp:Label>
                 </strong>
             </td>

        </tr>
    </table>
    </div>
    </form>
</body>
</html>
