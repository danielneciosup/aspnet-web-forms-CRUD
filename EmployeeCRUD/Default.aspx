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
               <td>Employee ID</td>
               <td>:</td>
               <td>
                   <asp:TextBox ID="txtEmpID" runat="server"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td>Employee First Name</td>
               <td>:</td>
               <td>
                   <asp:TextBox ID="txtEmpFN" runat="server"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td>Employee Last Name</td>
               <td>:</td>
               <td>
                   <asp:TextBox ID="txtEmpLN" runat="server"></asp:TextBox>                   
               </td>
           </tr>
           <tr>
               <td>Email</td>
               <td>:</td>
               <td>
                   <asp:TextBox ID="txtEmpEmail" runat="server"></asp:TextBox>
                   
               </td>
           </tr>
           <tr>
               <td colspan="2">
                   <asp:Button ID="btnInsercion" runat="server" Text="Insertar" OnClick="btnInsercion_Click" Width="59px"/>
                   <asp:Button ID="btnUpdate" runat="server" Text="Actualizar" OnClick="btnUpdate_Click"/>
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
       
        <hr />
        <table>
            <tr>
                <td colspan="3">
                    <h1>Deletion</h1>
                </td>
            </tr>
            <tr>
                <td>Employee ID</td>
                <td>:</td>
                <td>
                    <asp:TextBox ID="txtEmployeeID" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Button ID="btnDelete" runat="server" Text="Eliminar" OnClick="btnDelete_Click"/>
                    <asp:Label ID="lblMessageDelete" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
