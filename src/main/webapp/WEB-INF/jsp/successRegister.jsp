<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
	<title></title>
	<style type="text/css">
		@import url(https://fonts.googleapis.com/css?family=Roboto:300);

.login-page {
  width: 360px;
  padding: 8% 0 0;
  margin: auto;
}
h3{
     text-align: center;
     font-size: 25px;

} 
.form {
  position: relative;
  z-index: 1;
  background: #FFFFFF;
  max-width: 360px;
  margin: 0 auto 100px;
  padding: 45px;
  text-align: center;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
}
.form  h1{
     margin: 0;
     padding: 0 0 20px;
     text-align: center;
     font-size: 22px;
}
.form input,.sel {
  font-family: "Roboto", sans-serif;
  outline: 0;
  background: #f2f2f2;
  width: 100%;
  border: 0;
  margin: 0 0 15px;
  padding: 15px;
  box-sizing: border-box;
  font-size: 16px;
}
.form button,input[type=submit]{
  font-family: "Roboto", sans-serif;
  text-transform: uppercase;
  outline: 0;
  background: #4CAF50;
  width: 100%;
  border: 0;
    margin: 0 0 15px;
  padding: 15px;
  color: #FFFFFF;
  font-size: 16px;
  -webkit-transition: all 0.3 ease;
  transition: all 0.3 ease;
  cursor: pointer;

}
.form button:hover,.form button :active,.form button:focus {
  background: #43A047;
}
.form input[type=submit]:hover{
  background: #43A047;
}
.form .message {
  margin: 15px 0 0;
  color: #b3b3b3;
  font-size: 14px;
   margin: 0 0 15px;
}
.form .message a {
  color: #4CAF50;
  text-decoration: none;
}
.form .message a:hover {
  color:  #43A047;
}
.form .register-form {
  display: none;
}
.container {
  position: relative;
  z-index: 1;
  max-width: 300px;
  margin: 0 auto;
}
.container:before, .container:after {
  content: "";
  display: block;
  clear: both;
}
.container .info {
  margin: 50px auto;
  text-align: center;
}
.container .info h1 {
  margin: 0 0 15px;
  padding: 0;
  font-size: 36px;
  font-weight: 300;
  color: #1a1a1a;
}
.container .info span {
  color: #4d4d4d;
  font-size: 12px;
}
.container .info span a {
  color: #000000;
  text-decoration: none;
}
.container .info span .fa {
  color: #EF3B3A;
}
body {
  background: #76b852; /* fallback for old browsers */
  background: -webkit-linear-gradient(right, #76b852, #8DC26F);
  background: -moz-linear-gradient(right, #76b852, #8DC26F);
  background: -o-linear-gradient(right, #76b852, #8DC26F);
  background: linear-gradient(to left, #76b852, #8DC26F);
  font-family: "Roboto", sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;      
}
.errorMsg{
 color: #cc0000;
 margin-bottom: 2px;
  padding: 15px;

 display:none;
}
	</style>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
  $('#google').hide();
  $('#google1').hide();
  $('#login_as').change(function() {
      console.log($(this).val());
      var selected = $(this).val();
      if(selected == 'company' ){
        $('#google').show();
        $('#google1').show();
      }
      else{
        $('#google').hide();
        $('#google1').hide();
      }
  });
  });
    
   </script>
</head>
<body>
  
<div class="login-page">
  <h3>You are successfully Registered</h3>
   
  <div class="form">
     <h1>Login Here</h1>
 <form  action="alllogin" method="POST" id="userlogin" class="login-form">
 		<select name="login_as" id="login_as" class="sel" placeholder="login as">
       	<option value="">select Login as</option>
        <option value="company">Company</option>
        <option value="employee">Employee</option>
       </select><div id="loginas_error" style="color:red;"></div>
      <input type="email" name="email" placeholder="Enter Your Email" id="email"/><div id="email_error" style="color:red;"></div>
      <input type="password" name="password" placeholder="Enter Your Password" id="password"/><div id="password_error" style="color:red;"></div>
      <input type="submit" name="submit" value="Submit"  id="submit">
           
        
      
    </form>
    <p id="google1" class="message">-----Or-----</p>
    <button onclick="window.location.href = 'https://accounts.google.com/o/oauth2/auth?scope=email&redirect_uri=http://localhost:8080/callback&response_type=code&client_id=931062670962-h40kejm06seg3vuvtvicoe1vm302mm0t.apps.googleusercontent.com&approval_prompt=force';" id="google">Login With Google</button>
  <p class="message">Company Not registered?</p> 
      <p class="message"><a href="registration">Create an account</a></p>
  </div>
</div>
</body>
<script type="text/javascript">
$(document).ready(function(){
  $("#submit").click(function() {
if($("#login_as").val() == '') {
      $("#loginas_error").html ('Please select login as');
      $("#login_as").focus();
      return false;
    }  $('#loginas_error').html("");



    if($("#email").val() == '') {
      $("#email_error").html ('Please enter your Registered email id');
      $("#email").focus();
      return false;
    }  $('#email_error').html("");
    if($("#email").val() != '') {
     if (!/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,6})+$/.test($("#email").val())){
      $("#email_error").html ('Please enter correct email id');
      $("#email").focus();
      return false;
    } 
  }$('#email_error').html("");
   if($("#password").val() == '') {
      $("#password_error").html ('Please enter your Password');
      $("#password").focus();
      return false;
    }  $('#password_error').html("");
    if($("#password").val() != '') {
      if(!/^(((?=.*[a-z])(?=.*[A-Z]))|((?=.*[a-z])(?=.*[0-9]))|((?=.*[A-Z])(?=.*[0-9])))(?=.{6,}).*$/.test($("#password").val())){
      $("#password_error").html ("6 to 20 characters which contain at least one numeric digit, one uppercase and one lowercase letter and one Special character");
      $("#password").focus();
      return false;
    } }



    else {
      $("#userlogin").submit();
    }
  });
});
</script>
</html>