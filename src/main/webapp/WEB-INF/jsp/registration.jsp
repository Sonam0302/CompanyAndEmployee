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
.form input[type="text"],input[type="email"],input[type="password"],.sel {
  font-family: "Roboto", sans-serif;
  outline: 0;
  background: #f2f2f2;
  width: 100%;
  border: 0;
  margin: 0 0 15px;
  padding: 15px;
  box-sizing: border-box;
  font-size: 14px;
}
.form #logo{
	display: none;
}
.form button,input[type="submit"] {
  font-family: "Roboto", sans-serif;
  text-transform: uppercase;
  outline: 0;
  background: #4CAF50;
  width: 100%;
  border: 0;
  padding: 15px;
  color: #FFFFFF;
  font-size: 14px;
  -webkit-transition: all 0.3 ease;
  transition: all 0.3 ease;
  cursor: pointer;
}
.form input[type="submit"]:hover,.form button:active,.form button:focus {
  background: #43A047;
}
.form .message {
  margin: 15px 0 0;
  color: #b3b3b3;
  font-size: 12px;
}
.form .message a {
  color: #4CAF50;
  text-decoration: none;
}
.form .register-form {
  display: none;
}
 .upload-btn {
 	font-family: "Roboto", sans-serif;
    display: block;
  	outline: 0;
    width:100%;
  	background: #f2f2f2;
	border: 0;
  	margin: 0 0 15px;
  	padding: 15px;
  	box-sizing: border-box;
  	font-size: 14px;
  	text-align: left;
    }

 .upload-btn:hover {
    background: #43A047;
    color: white;
    cursor: pointer;
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
	</style>
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	 <script type="text/javascript">
  function changeText() {
    var y = document.getElementById("logo").value;
    document.getElementById("selectedFileName").innerHTML = y;
  }
</script>
</head>
<body>
<div class="login-page">
  <div class="form">
  	  <h1>Register Here</h1>
 <form action="save" method="POST" id="userlogin" class="login-form"  enctype="multipart/form-data">
 	  <input type="text" name="com_name" id="com_name" placeholder="Please Enter Your company's Name"/>
 	  <div id="comname_error" style="color:red;"></div>
      <input type="email" name="com_email" id="com_email" placeholder="Please Enter Your Email"/>
      <div id="comemail_error" style="color:red;"></div>
      <input type="password" name="com_pass" id="com_pass"placeholder="Please Enter Your Password"/>
      <div id="compass_error" style="color:red;"></div>
      <input type="password" id="con_password"  placeholder="Please Confirm Your Password"/><div id="conpassword_error" style="color:red;"></div>
     
<label class="upload-btn">
      <input type="file"  name="image" onchange="changeText()" id="logo" size="50"  accept=".jpg,.png,.bmp"/>
      <span id="selectedFileName">Please Upload Your Company Logo</span><div id="logo_error" style="color:red;"></div>
     </label>


      <input type="submit" name="submit" value="submit" class="submit" id="submit" />
    </form>
    <p class="message">-----Or Registered With-----</p>
    <button onclick="window.location.href = 'https://accounts.google.com/o/oauth2/auth?scope=email&redirect_uri=http://localhost:8080/callback&response_type=code&client_id=931062670962-h40kejm06seg3vuvtvicoe1vm302mm0t.apps.googleusercontent.com&approval_prompt=force';" id="google">Sign up With Google</button>
    <p class="message">Already Registered? <a href="/company/">Login Here</a></p>
  </div>
</div>
</body>
<script type="text/javascript">
$(document).ready(function(){
  $("#submit").click(function() {
if($("#com_name").val() == '') {
      $("#comname_error").html ('Please Enter Your Company Name');
      $("#com_name").focus();
      return false;
    }  $('#comname_error').html("");

	    if($("#com_name").val() != '') {
	      if ($("#com_name").val().length <3){
	      $("#comname_error").html ('Please Enter Your Full Company Name');
	      $("#com_name").focus();
	      return false;
	    } 
	  }$('#comname_error').html("");
if($("#com_email").val() == '') {
      $("#comemail_error").html ('Please Enter Your Company Email Id');
      $("#com_email").focus();
      return false;
    }  $('#comemail_error').html("");
    if($("#com_email").val() != '') {
     if (!/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,6})+$/.test($("#com_email").val())){
      $("#comemail_error").html ('Please Enter Your Valid Email Id');
      $("#com_email").focus();
      return false;
    } 
  }$('#comemail_error').html("");
   if($("#com_pass").val() == '') {
      $("#compass_error").html ('Please Enter Your Password');
      $("#com_pass").focus();
      return false;
    }  $('#compass_error').html("");
    if($("#com_pass").val() != '') {
      if(!/^(((?=.*[a-z])(?=.*[A-Z]))|((?=.*[a-z])(?=.*[0-9]))|((?=.*[A-Z])(?=.*[0-9])))(?=.{6,}).*$/.test($("#com_pass").val())){
      $("#compass_error").html ("6 to 20 characters which contain at least one numeric digit, one uppercase and one lowercase letter");
      $("#com_pass").focus();
      return false;
    } 
} if($('#con_password').val() == ''){
        $('#conpassword_error').html('Please confirm your Password');
        $('#con_password').focus();
        return false;
      }
 if($('#con_password').val() !=$('#com_pass').val()){
        $('#conpassword_error').html('confirm password does not matched');
          $('#con_password').focus();
          return false;
      }$('#conpassword_error').html('');
     
      if($('#logo').val()==''){
        $('#logo_error').html( 'Please select one image');
        $('#logo').focus();
        return false;
      }



    else {
      $("#userlogin").submit();
    }
  });
});
</script>

</html>