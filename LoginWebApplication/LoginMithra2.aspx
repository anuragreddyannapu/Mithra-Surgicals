﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginMithra2.aspx.cs" Inherits="LoginWebApplication.LoginMithra2" %>



<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html>
<head>
    <link href="Scripts/CSS/LoginMithra2.css" rel="stylesheet" />
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="Scripts/JavaSript/LoginUserDetails.js"></script>
	<title>Login Page</title>
   <!--Made with love by Mutiullah Samim -->
   
	<!--Bootsrap 4 CDN-->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    
    <!--Fontawesome CDN-->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

	<!--Custom styles-->
	<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
<div class="container">
	<div class="d-flex justify-content-center h-100">
		<div class="card">
			<div class="card-header">
                <h3 style="text-align:center;color:yellow;">Mithra World</h3>
				<h3>Sign In</h3>
				<%--<div class="d-flex justify-content-end social_icon">
					<span><i class="fab fa-facebook-square"></i></span>
					<span><i class="fab fa-google-plus-square"></i></span>
					<span><i class="fab fa-twitter-square"></i></span>
				</div>--%>
			</div>
			<div class="card-body">
				<form runat="server">
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						<input type="text" id="EmailTxt" autocomplete="off" runat="server" class="form-control" placeholder="username or email">
						
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-key"></i></span>
						</div>
						<input type="password" id="PasswordTxt" runat="server" autocomplete="off" class="form-control" placeholder="password">
					</div>
					<div class="row align-items-center remember">
						<input type="checkbox">Remember Me
					</div>
					<div class="form-group">
						<%--<input type="submit" value="Login" onclick="UserNameTextBox(); PasswordTextBox();" class="btn float-right login_btn">--%>
                        <%--<button type="submit" id="loginbtn" runat="server" onserverclick="loginbtn_Click" onclick =" return(UserNameTextBox()&&PasswordTextBox());"  class="btn float-right login_btn">Submit</button>--%>
                        <asp:Button ID="Loginbtn" runat="server" Text="Login"  OnClientClick="return (UserNameTextBox() && PasswordTextBox())" class="btn float-right login_btn" OnClick="Loginbtn_Click" /> <br />
                        
                        <%--<asp:Literal ID="Literal" CssClass="LoginMithraLa" runat="server"></asp:Literal>--%>
                        <asp:Label ID="Label1" runat="server" CssClass="LoginMithraLa"></asp:Label>
					</div>
				</form>
			</div>
			<div class="card-footer">
				<div class="d-flex justify-content-center links">
					Don't have an account?<a href="RegistrationMithra1.aspx">Sign Up</a>
				</div>
				<div class="d-flex justify-content-center">
					<a href="#">Forgot your password?</a>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>
