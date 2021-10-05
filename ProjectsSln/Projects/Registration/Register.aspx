<%@ Page Title="" Language="C#" MasterPageFile="~/LoginSite.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Projects.Registration.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <table>
                <tr>
                     <td colspan="2"><h1>User Register</h1></td>
                </tr>
              <tr>
                  <td>User Name</td>
                  <td>
                      <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="UserName Required" ControlToValidate="txtUserName" ForeColor="Red"></asp:RequiredFieldValidator>
                  </td>
              </tr>
                <tr>
                  <td>Password</td>
                  <td>
                      <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Paswword Required" ControlToValidate="txtPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                  </td>
              </tr>
                <tr>
                  <td>Confirm Password</td>
                  <td>
                      <asp:TextBox ID="txtConfirmPass" runat="server" Height="22px" TextMode="Password"></asp:TextBox>
                      <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Must be Same as Given Password" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPass" ForeColor="Red"></asp:CompareValidator>
                  </td>
                    
                      
                    
              </tr>
                <tr>
                  <td>Email</td>
                  <td>
                      <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Formate" ControlToValidate="txtEmail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                  </td>
              </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click"  />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
</asp:Content>
