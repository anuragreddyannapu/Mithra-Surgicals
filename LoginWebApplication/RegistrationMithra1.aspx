<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationMithra1.aspx.cs" Inherits="LoginWebApplication.RegistrationMithra1" %>

<!DOCTYPE html>
<html lang="en">
<head>
<link href="Scripts/CSS/LoginMithra2.css" rel="stylesheet" />
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="Scripts/JavaSript/Registration.js"></script>
	<title>Registration</title>
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
				<h3><label style="color:yellow"> Mithra Registration </label> </h3>
				<%--<div class="d-flex justify-content-end social_icon">
					<span><i class="fab fa-facebook-square"></i></span>
					<span><i class="fab fa-google-plus-square"></i></span>
					<span><i class="fab fa-twitter-square"></i></span>
				</div>--%>
			</div>
			<div class="card-body">
				<form runat="server" method="post"> 					
						<div class="input-group form-group">
				                <input type="text" id="FristNameTxt" class="form-control" autocomplete="off" runat="server" name="first_name" placeholder="First Name" required="required">
                                            <span class="input-group-addon">-</span>
				                <input type="text" id="LastNameTxt" class="form-control" autocomplete="off" runat="server" name="last_name" placeholder="Last Name" required="required">
                         </div>
			
						
					
					<div class="form-group">
        	<input type="email" id="EmailTxt" class="form-control" autocomplete="off" name="email" runat="server" placeholder="Email" required="required">
        </div>
		<div class="form-group">
            <input type="password" id="PasswordTxt" autocomplete="off" class="form-control" runat="server" name="password" placeholder="Password" required="required">
        </div>
		<div class="form-group">
            <input type="password" id="ConfirmPasswordTxt" autocomplete="off" class="form-control" name="confirm_password" placeholder="Confirm Password" required="required">
        </div>        
        <div class="form-group">
			<label class="checkbox-inline"><input type="checkbox" required="required"> I accept the <a href="#">Terms of Use</a> &amp; <a href="#">Privacy Policy</a></label>
		</div>
		<div class="form-group">
            <%--<button type="button" id="Submitbtn" onclick="FristNameTextBox();LastNameTextBox();EmailTextBox();PasswordTextBox();"   class="btn login_btn btn-block">Submit</button>--%>
       
            <%--<button type="submit" id="Submitbtn" runat="server" onserverclick="Submitbtn_Click" OnClientClick ="return(FristNameTextBox()&&LastNameTextBox()&&EmailTextBox()&&PasswordTextBox());"  class="btn login_btn btn-block">Submit</button>--%>
            <asp:Button ID="Registerbtn" runat="server" Text="Register"  OnClientClick="return (FristNameTextBox() && LastNameTextBox()&& EmailTextBox() && PasswordTextBox());" class="btn login_btn btn-block" OnClick="Registerbtn_Click" /> <br />
             </div>
				</form>
			</div>
			<div class="card-footer">
				<div class="d-flex justify-content-center links">
					Already have an account?<a href="LoginMithra2.aspx">Sign In</a>
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
