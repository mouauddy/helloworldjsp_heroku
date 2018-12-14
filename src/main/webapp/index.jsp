
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

</head>
<script>
var isErr = false;

function validateForm() {
	 if (username.value == "") {
	        isErr = true;
	        //username.setCustomValidity("Please Enter Email/Mobile No.");
	         alert("Please enter your user name");
	        username.focus();

	    } else if (pass.value == "") {
	        isErr = true;
	        alert("Please Enter Password.");
	        //pass.setCustomValidity("Please Enter Password.");
	        pass.focus();		
	    }
    if (!isErr) {
        debugger;
        //document.getElementById(form).submit();
        document.forms["loginform"].submit();

        return true;
    }
    return false;
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>Twillo app</title>
 <style>
            #search1{margin-left: 370px;}
            #nameField{width:500px;}
            .l1{margin-left:350px;}
            #b1{margin-left: 350px;}
        </style>


</head>
<body>

 <div class="navbar navbar-default">
            <div class="container-fluid">
            <div class="navbar-header">
          <a class="navbar-brand" href="#"></a>
            
            </div>
                <div class="collapse navbar-collapse" id="mynavbar-content">
         		<ul class="nav navbar-nav">
                        <li class="active"><a href="index.jsp">Home</a></li>                                              
                       
                        <li><a href="contact.jsp">Contact</a></li>
                        <li><a href="account.jsp">Accounts</a></li>
                       
                    </ul>
                </div>
            </div>
        </div>
        <form method="post" action="loginprocess.jsp">
            
            <div class="form-group"><label class="l1">User Name<input type="text" name="username" class="form-control" id="nameField" placeholder="Enter username" /></label></div>
            <div class="form-group"><label class="l1">Password<input type="password" name="pass" class="form-control" id="nameField" placeholder="********" /></label></div>
            <button type="submit" class="btn btn-primary" id="b1" name="b1" value="Login">Login</button>
            <a href="register.jsp" class="btn btn-default">Sign Up?</a>
            
            
            
        </form>
   <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</body>
</html>