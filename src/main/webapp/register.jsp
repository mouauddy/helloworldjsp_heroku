<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registration Page</title>
<script>
function validate(){
	//keep document status up to date with boolean variable
	var isValid = true;
	//len of pass
	var len = document.forms["sample"]["pass"].value.length;
	//check if email still contains correct format for styling
	if( /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(document.forms["sample"]["email"].value) ){
	  document.getElementById('email').style.borderColor = "green";
	  document.getElementById('p1').innerHTML="";
	} else {
	  document.getElementById('email').style.borderColor = "red";
	  document.getElementById('p1').innerHTML=" Invalid email";
	  isValid = false;
	}
	//if pass is less than 8 we return false
	if(len < 8 ){
		document.getElementById('pass').style.borderColor = "red";
		document.getElementById('p2').innerHTML=" Invalid password";
		isValid = false;
	} else {
		document.getElementById('pass').style.borderColor = "green";
		document.getElementById('p2').innerHTML="";
	}
	
	//check if password is alphanumeric, has 1 letter upper and lower and 1 number
	var alphaNum = /^[a-zA-Z0-9]+$/;
	var letter = /[a-z]/;
	var upper = /[A-Z]/;
	var number = /[0-9]/;
	var pwd = document.forms["sample"]["pass"].value;
	var valid = letter.test(pwd) && upper.test(pwd) && number.test(pwd) && alphaNum.test(pwd);
	if( !valid ){
		document.getElementById('pass').style.borderColor = "red";
		document.getElementById('p2').innerHTML=" Invalid password";
		isValid = false;
	} else {
	  document.getElementById('pass').style.borderColor = "green";
	  document.getElementById('p2').innerHTML="";
    }
	//return status of form
	return isValid;
	
}
</script>
<style>
  h2 {
    display: inline-block;
  }
  h2 {
    float: left;
    margin-left: 20px;
  }
   
div.ex {
	text-align: right width:300px;
	padding: 10px;
	border: 5px solid grey;
	margin: 0px
}

</style>
</head>
<body>
  <div class ="ex" style="position: absolute;top: 0px;left: 0;width: 100%;">
    <div style="background: #c48ec5;width: 100%;"><h2 style="color: grey;">Registration Page</h2>
    <a href="login.jsp" style="text-decoration: none;color: white;float: right;margin-top: 20px;margin-right: 5px;">Return to Login</a>
</div>
<a href="index.jsp">Home</a>|  

<a href="contact.jsp">Contacts</a>|
<a href="account.jsp">Accounts</a>
  <form name="sample" action="adduserprocess.jsp" method="post" onsubmit="return validate()">
  <p>Choose user name</p>
    <input id="username" name="username" type="text" maxlength=32 required><p id="p" style="color: red;display: inline;"></p>
    <p>Choose valid email</p>
    <input id="email" name="email" type="email" maxlength=32 required><p id="p1" style="color: red;display: inline;"></p>
    <p>Choose password (alphanumeric, 1 upper, 1 lower, 1 number required)</p>
    <input id="pass" name="pass" type="password" maxlength=16 required><p id="p2" style="color: red;display: inline;"></p>
    <br><br>
    <input type="submit" value="Submit">
  </form>
  </div>
</body>
</html>