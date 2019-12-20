<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="/resources/css/intro.css">	
<link rel="stylesheet" type="text/css" href="/resources/css/w3.css">	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
function validate(){
	 if(document.getElementById('password_old').value == ''){
		    document.getElementById('passwordold_error').innerHTML = 'Please enter  Password';
		    document.getElementById('password_old').focus();
		    return false;
		  }
		 
		  if(document.getElementById('password_old').value != ''){
		    if (!/^(((?=.*[a-z])(?=.*[A-Z]))|((?=.*[a-z])(?=.*[0-9]))|((?=.*[A-Z])(?=.*[0-9])))(?=.{6,}).*$/.test(document.getElementById('password_old').value))
		      {
		      document.getElementById('passwordold_error').innerHTML = 'password must contain atleast one Capital letter,one special character,numeric value';
		      document.getElementById('password_old').focus();
		      return (false)
		      }
		  }document.getElementById('passwordold_error').innerHTML = '';
		 
		  if(document.getElementById('password').value == ''){
		    document.getElementById('password_error').innerHTML = 'Please enter  Password';
		    document.getElementById('password').focus();
		    return false;
		  }
		 
		  if(document.getElementById('password').value != ''){
			  if (!/^(((?=.*[a-z])(?=.*[A-Z]))|((?=.*[a-z])(?=.*[0-9]))|((?=.*[A-Z])(?=.*[0-9])))(?=.{6,}).*$/.test(document.getElementById('password').value))
		      {
		      document.getElementById('password_error').innerHTML = 'password must contain atleast one Capital letter,one special character,numeric value';
		      document.getElementById('password').focus();
		      return (false)
		      }
		  }document.getElementById('password_error').innerHTML = '';
		if(document.getElementById('con_password').value == ''){
		    document.getElementById('conpassword_error').innerHTML = 'Please confirm your Password';
		    document.getElementById('con_password').focus();
		    return false;
		  }

		  if(document.getElementById('con_password').value !=document.getElementById('password').value){
		    document.getElementById('conpassword_error').innerHTML = 'confirm password does not matched';
		      document.getElementById('con_password').focus();
		      return (false)
		  }document.getElementById('conpassword_error').innerHTML = '';
		 
}

</script>
</head>
<body>
<div>
	 <div class="header">
	       <ul>
    			<li><h2>Welcome <div id="name" class="name"></h2></li>    			
				<li style="float: right;"><a href="logout"><p>LOGOUT</p></a></li>
			</ul>
      	</div>    
    


<div class="main">
  <h3>Details</h3>
  <form  action="updatePassword" method="POST" id="userlogin" onsubmit="return validate()">
   <label>Old Password</label>
    <input class="w3-input w3-border" type="password" name="com_pass_old" id="password_old">
    <div id="passwordold_error" style="color:red;"></div>
    <br>
  
    <label>Password</label>
    <input class="w3-input w3-border" type="password" name="com_pass" id="password">
    <div id="password_error" style="color:red;"></div>
    <br>
     <label>Confirm Password</label>
    <input class="w3-input w3-border" type="password" id="con_password">
    <div id="conpassword_error" style="color:red;"></div>
    <br>
    
      
     
    <input class="w3-input w3-border" type="hidden" name="com_id" id="id"  >
    <input class="w3-input w3-border" type="hidden" name="com_email" id="email" >
     <input class="w3-input w3-border" type="hidden" name="com_name" id="name1" >
    <br>
     
  
  <input class="w3-input w3-border" type="submit" name="submit" value="Submit" id="submit">
  </form>

  </div>
  
  
</div>


 <script src="/resources/js/company_intro.js"></script>
<%@include file="/resources/side/admin_sidebar.jsp" %>

</body>
</html> 
