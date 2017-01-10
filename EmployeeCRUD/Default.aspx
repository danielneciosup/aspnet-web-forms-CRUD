<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EmployeeCRUD.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="frmInsert" runat="server">
       <table style = "width:100%;">
           <tr>
               <td colspan="2">
                   <h1>Insertion</h1>
               </td>
           </tr>
           <tr>
               <td>Employee First Name</td>
               <td>:</td>
               <td>
                   <asp:TextBox ID="txtEmpFN" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID ="requiredFieldFN" runat="server"
                       ControlToValidate="txtEmpFN"
                       ErrorMessage="Nombres requeridos"
                       ForeColor="Red">
                   </asp:RequiredFieldValidator>
               </td>
           </tr>
           <tr>
               <td>Employee Last Name</td>
               <td>:</td>
               <td>
                   <asp:TextBox ID="txtEmpLN" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID ="requiredFieldLN" runat="server"
                       ControlToValidate="txtEmpLN"
                       ErrorMessage="Nombres requeridos"
                       ForeColor="Red">
                   </asp:RequiredFieldValidator>
               </td>
           </tr>
           <tr>
               <td>Email</td>
               <td>:</td>
               <td>
                   <asp:TextBox ID="txtEmpEmail" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="requiredFieldEmail" runat="server"
                       ControlToValidate="txtEmpEmail"
                       ErrorMessage="Email requerido"
                       ForeColor="Red">
                   </asp:RequiredFieldValidator>
               </td>
           </tr>
           <tr>
               <td colspan="2">
                   <asp:Button ID="btnInsercion" runat="server" Text="Insertar" OnClick="btnInsercion_Click" Width="59px"/>
                   <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
               </td>
           </tr>
       </table>
       
       <hr />       
       
       <table>
           <tr>
               <td>
                   <h1>Selection</h1>
               </td>
           </tr>
           <tr>
               <td>
                   <asp:Button ID="btnSelect" runat="server" Text="Select All Data" OnClick="btnSelect_Click"/>
               </td>
           </tr>
           <tr>
               <td>
                   <asp:GridView ID="gvEmployes" runat="server"></asp:GridView>
               </td>
           </tr>
       </table>
    </form>
</body>
</html>
