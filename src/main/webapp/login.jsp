
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>
  function validate(){
	  //getting length of password
	  var len = document.forms["sample"]["pass"].value.length;
	  //if valid length go to controller servlet to search for user
	  if(len < 8 ){
		  alert("Password length is less than 8 characters");
		  return false;
	  } else {
		  return true;
	  }
  }
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>Twillo app</title>
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
<!-- display tasks here -->
 
     <div class ="ex" style="position: absolute;top: 0px;left: 0;height:100%;width: 100%;">
    <div style="background: #c48ec5;width: 100%;"><h2 style="color: white;">Welcome to the web application</h2>
    <a href="register.jsp" style="text-decoration: none;color: white;float: right;margin-top: 20px;margin-right: 5px;">Register here</a>
</div>
<a href="index.jsp">Home</a>|
<a href="contact.jsp">Contacts</a>|
<a href="account.jsp">Accounts</a>
    <form action="loginprocess.jsp"  method="post" name="sample" onsubmit="return validate()">
      UserName: <input type="email" name="username"  required />
      <br><br>
      Password: <input type="password" name="pass" maxlength="16"  required /><br><br>
      <input type="submit" value="Login">
      
    </form><br>
  
  </div>

</body>
</html>