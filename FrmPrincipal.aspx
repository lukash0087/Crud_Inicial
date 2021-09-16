<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmPrincipal.aspx.cs" Inherits="Proj01.FrmPrincipal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Programa 01 em ASP.NET</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:TextBox ID="txtID_Cliente" runat="server" AutoPostBack="True"
                OnTextChanged="txtID_Cliente_TextChanged" Visible="False"></asp:TextBox>



            <table>
                <tr>
                <td>Nome do Cliente </td>  
                <td> <asp:TextBox ID="txtNm_Cliente" runat="server" Width="200px" MaxLength="150"></asp:TextBox> </td>   
                </tr>
            
                <tr>
                <td>Telefone</td> 
                <td><asp:TextBox ID="txtNr_Telefone" runat="server" MaxLength="11" Width="200px"></asp:TextBox></td> 
                </td>             
                </tr>


                    <!-- Check Box    -->
               <tr>
                   <td>
                    Ele é Vip ? 
                    </td>
                  <td>
                    <asp:CheckBox ID="chkSt_VIP"  runat="server" />
                  </td>
               </tr>
                                                                           
              </table>

                <br/>
                <asp:Label ID="lblDs_Msg" runat="server" Text=""></asp:Label>
                <br />

              <table>
               
                 <tr>           
                 <td> 
                    <asp:Button ID="BtnSalvar" runat="server" Text="Salvar" Width="80px" OnClick="BtnSalvar_Click" Height="26px" />
                 </td> 

                 <td>
                    <asp:Button ID="BtnConsultar" runat="server" Text="Consultar" Width="80px"/>
                 </td>

                 <td>
                    <asp:Button ID="BtnExcluir" runat="server" Text="Excluir" Width="80px" OnClick="BtnExcluir_Click"/>
                 </td>

                 <td>
                    <asp:Button ID="BtnLimpar" runat="server" Text="Limpar" Width="80px" OnClick="BtnLimpar_Click"/>
                 </td>

                 </tr>


              </table>
        </div>
    </form>
</body>
</html>
