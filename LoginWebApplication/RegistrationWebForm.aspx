<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationWebForm.aspx.cs" Inherits="LoginWebApplication.LoginWebForm"%>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="Scripts/JavaSript/Registration.js"></script>
    <link href="Scripts/CSS/Registration.css" rel="stylesheet" />
   <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.0/themes/base/jquery-ui.css"/>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"></script>
<%--    <script src="Scripts/jquery.js"></script>
    <script src="Scripts/jquery.validate.js"></script>--%>


  <script>
        $(document).ready(function () {
            $('#TextBox3').datepicker({
                dateFormat: 'dd/mm/yy'
            });
        });
  </script>


    <title> Registration Details </title>

    
</head>

<body>
    <form id="form1" runat="server">
    <div>
        <h2> Sign Up Now </h2>
        <table align ="center">

                <tr>
                    <td>FristName:</td>
                    <td>
                        <asp:TextBox ID="TextBox1" placeholder="FristName"  autocomplete="off" runat="server"></asp:TextBox></td>
                </tr>
            <tr><td></td></tr>
                <tr>
                    <td>LastName:</td>
                    <td>
                        <asp:TextBox ID="TextBox2" placeholder="LastName" autocomplete="off" runat="server"></asp:TextBox></td>
                </tr>
            <tr><td></td></tr>
                <tr>
                    <td>Gender:</td>
                    <td>
                        <asp:RadioButton ID="RadioButton1" Text="Male" runat="server" GroupName="GenderGroup" Checked="True" />
                        <asp:RadioButton ID="RadioButton2" Text="Female" runat="server" GroupName="GenderGroup" /></td>
                </tr>
            <tr><td></td></tr>
                <tr>
                    <td>DateOfBirth:</td>
                    <td>
                        <asp:TextBox ID="TextBox3" placeholder="Data Of Birth" autocomplete="off" runat="server"></asp:TextBox></td>
                </tr>
            <tr><td></td></tr>
                <tr>
                    <td>Coutry:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" autocomplete="off" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1">
                        </asp:DropDownList></td>
                </tr>
            <tr><td></td></tr>
            
                <tr>
                    <td>State:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" autocomplete="off" AutoPostBack="True" runat="server" Width="110px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                        </asp:DropDownList></td>
                </tr>
            <tr><td></td></tr>
                <tr>
                    <td>City::</td>
                    <td>
                        <asp:DropDownList ID="DropDownList3" autocomplete="off"  runat="server"></asp:DropDownList></td>
                </tr>
            <tr><td></td></tr>
                <tr>
                    <td>PhoneNumber:</td>
                    <td>
                        <asp:TextBox ID="TextBox4" placeholder="Phone Number" autocomplete="off" runat="server" MaxLength="10"></asp:TextBox></td>
                </tr>
            <tr><td></td></tr>
                <tr>
                    <td>Email:</td>
                    <td>
                        <asp:TextBox ID="TextBox5" placeholder="Email" runat="server" autocomplete="off"  TextMode="Email"></asp:TextBox></td>
                </tr>
            <tr><td></td></tr>
                <tr>
                    <td>Password:</td>
                    <td>
                        <asp:TextBox ID="TextBox6" placeholder="Password" runat="server" autocomplete="off" TextMode="Password" maxlength="10" data-minlength="5"></asp:TextBox></td>
                </tr>
            <tr><td></td></tr>
                <tr>
                    <td>Confirm Password:</td>
                    <td>
                        <asp:TextBox ID="TextBox7" placeholder="Confirm Password" TextMode="Password" maxlength="10" runat="server"></asp:TextBox></td>
                </tr>
            <tr><td></td></tr>
            <tr><td></td></tr>
            <tr><td></td></tr>
            <tr><td></td></tr>
            <tr><td></td></tr>
            <tr><td></td></tr>
                <tr>
                    <td colspan="2" style="text-align:center">
                        
                        <asp:Button ID="Button1" runat="server" Text="Register"  OnClientClick="return (FristNameTextBox() && LastNameTextBox() && DateOfBirthTexBox() && CountryDropBox() && StateDropBox() && ValidateMobNumber() && EmailTextBox() && PasswordTextBox())" OnClick="Button1_Click" /> <br />
                        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                        
                    </td>
                </tr>
        </table>
    </div>

    
    </form>
</body>

</html>



<%--</asp:Content>--%>
