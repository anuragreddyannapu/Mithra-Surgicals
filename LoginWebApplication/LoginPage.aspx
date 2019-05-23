<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="LoginWebApplication.SignUpPage" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">--%>
<!DOCTYPE html>
<script src="Scripts/JavaSript/LoginUserDetails.js"></script>
<link href="Scripts/CSS/UserLoginDetailsPage.css" rel="stylesheet" />

<head runat="server">

    <script src="Scripts/JavaSript/LoginUserDetails.js"></script>
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.0/themes/base/jquery-ui.css"/>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"></script>
    <script src="Scripts/jquery.js"></script>
    <script src="Scripts/jquery.validate.js"></script>


    <title>  </title>

    
</head>
<body>
    <header>
        <hgroup>
            <h2> Mithra Surgicals </h2>
        </hgroup>
    </header>
<form id="form1" runat="server">
    <h3 class="LoginTextHeader"> Login Here </h3>
    <div class="UserLoginTable">
        
        <table class="UserLoginTable" align="center">
            
            <tr>
                <td class="LoginUserText" > Email:</td>
                <td>
                    <asp:TextBox ID="TextBox1" placeholder=" Enter Email " class="LoginUserTextbox" autocomplete="off" runat="server"></asp:TextBox></td>
            </tr>
            <tr><td></td></tr>
            <tr><td></td></tr>
            <tr><td></td></tr>
            <tr>
                <td class="LoginUserText">Password:</td>
                <td>
                    <asp:TextBox ID="TextBox2" placeholder=" Enter Password" autocomplete="off" class="LoginUserTextbox" TextMode="Password" runat="server"></asp:TextBox></td>
            </tr>
            <tr><td></td></tr>
            <tr><td></td></tr>
            <tr><td></td></tr>
            <tr><td></td></tr>
            <tr><td></td></tr>
            <tr>
                <td colspan="2" style="text-align:center">
                    <asp:Button ID="Button1" runat="server" Text="Login" CssClass="UserLoginButton" OnClientClick="return (UserNameTextBox() && PasswordTextBox())" OnClick="Button1_Click" /></td>
                <td class="LoginNotAmember"> <p> Not A Member? <a href="RegistrationWebForm.aspx">Click to Register </a> </p></td>
            </tr>
            <tr>
                <td> <asp:Literal ID="Literal1" runat="server"></asp:Literal></td>
            </tr>
        </table>
    
    </div>
    <footer> Copyrights © Mithra Surgicals </footer>

    </form>

    </body>

<%--    </asp:Content>--%>

