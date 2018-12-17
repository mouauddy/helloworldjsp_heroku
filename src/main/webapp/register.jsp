<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Registration Page</title>
<script>
var isErr = false;

function validateForm() {
    
    if (username.value == "") {
        isErr = true;
        alert("Please enter your user name");
        firstName.focus();
		
    }else if (pass.value.length < 6) {
        isErr = true;
        alert("Password must contain atleast 6 characters.");
        pass.focus();
		
    }else if (cnfrmpass.value == "") {
        isErr = true;
        alert("Please confirm your Password");
        cnfrmpass.focus();
		
    }else if ((cnfrmpass.value.length>0) && (cnfrmpass.value != pass.value)) {
        isErr = true;
        alert("Password Mis-match. Reconfirm your Password.");
        cnfrmpass.focus();
		
    }else if (eMail.value == "") {
        isErr = true;
        alert("Please enter your Email");
        eMail.focus();
		
    }else if (!eMail.value.match(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/)) {
        isErr = true;
        alert("Please enter valid Email");
        eMail.focus();
		
    }  
    
}
    if (!isErr) {
        debugger;
        //document.getElementById(form).submit();
        document.forms["form"].submit();
        alert("Form Submitted...");
        return true;
    }
    return false;


</script>
         <style>
 .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
    
  .carousel-inner img {
      width: 100%; /* Set width to 100% */
      margin: auto;
      min-height:200px;
  }

  /* Hide the carousel text when the screen is less than 600 pixels wide */
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; 
    }
  }
   footer {
  position: absolute;
  bottom: 0;
  width: 100%;
  height: 70px;
}
  </style>        
    </head>
    <body>
 
      <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Logo</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="index.jsp">Home</a></li>
        <li><a href="contact.jsp">Contact</a></li>
        <li><a href="account.jsp">Account</a></li>
       <!--  <li><a href="#">Contact</a></li> -->
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>
<div class="container">
  <h2>Register Form</h2>
      <form method="post" action="adduserprocess.jsp">
           
             <div class="col-xs-8">
             <label class="l1">User Name</label>
             <input type="text" name="username"  class="form-control" id="nameField" placeholder="Enter Username" />
             </div>
             <div class="col-xs-8"><label class="l1">Password</label>
             <input type="password" name="pass" class="form-control" id="nameField" placeholder="Enter password" />
             </div>
            <div class="col-xs-8"><label class="l1">Confirm Password</label>
            <input type="password" class="form-control" name="cnfrmpass" id="nameField" placeholder="Enter Confirm Password" />
            </div>
            <div class="col-xs-8"><label class="l1">Email</label>
            <input type="email" name="email" class="form-control" id="nameField" placeholder="abc@domain.com" />
            </div>
           
            <div class="col-xs-8">
            <br><button type="submit" class="btn btn-primary" id="b1">Submit</button> 
            <button type="reset" class="btn btn-default" id="b2">Reset</button>
            </div>
        
              
        </form>
        </div>
<footer class="container-fluid text-center">
  <p>© Untitled. All rights reserved.</p>
</footer>
</body>
</html>