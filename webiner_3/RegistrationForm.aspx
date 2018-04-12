<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationForm.aspx.cs" Inherits="webiner_3.RegistrationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function ValidateForm() {
            var name = document.getElementById("txtName").value;
            if (name == "") {
                alert("Please enter candidate name");
            }
            else {
                alert(name);
            }
        } 
    </script>
    <style type="text/css">
        .auto-style1 {
            width: 208px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <table border="1">
             <tr>
                 <td>
                     Canditdate Name
                 </td>
                 <td class="auto-style1">
                     <asp:TextBox ID="txtName" runat="server" Width="214px"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="rfvmname" ControlToValidate="txtName" runat="server" ErrorMessage="Required name" ForeColor="Red"></asp:RequiredFieldValidator>
                 </td>
             </tr>   
                 
                 
             <tr>
                 <td>
                     Contact Number
                 </td>
                 <td class="auto-style1">
                     <asp:TextBox ID="txtContactNumber" runat="server" Width="216px"></asp:TextBox>
                 </td>
             </tr>   
                 
             <tr>
                 <td>
                     Email
                 </td>
                 <td class="auto-style1">
                     <asp:TextBox ID="txtEmail" runat="server" Width="219px"></asp:TextBox>
                     <asp:RegularExpressionValidator ControlToValidate="txtEmail" ID="RegularExpressionValidator1"  runat="server" ErrorMessage="Validator email id " ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                 </td>
                 
             </tr>   
             
                 
             <tr>
                 <td>
                     Qualification
                 </td>
                 <td class="auto-style1">
                     <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                            <asp:ListItem>B.E</asp:ListItem>
                            <asp:ListItem>M.E</asp:ListItem>
                            <asp:ListItem>BCA</asp:ListItem>
                            <asp:ListItem>MCA</asp:ListItem>
                     </asp:DropDownList>
                     </td>
             </tr>   
                 <tr >
                     <td colspan="2">
                         <asp:Button ID="txtSubmit" runat="server" Text="SUBMIT" Width="201px" onClientClick="ValidateForm();" onClick="txtSubmit_Click" />
                     </td>
                 </tr>
             </table>
        </div>
    </form>
</body>
</html>
