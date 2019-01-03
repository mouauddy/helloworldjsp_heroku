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
body {
    padding-top:0px;
}
fieldset {
    border: thin solid #ccc; 
    border-radius: 4px;
    padding: 20px;
    padding-left: 40px;
    background: #fbfbfb;
}
legend {
   color: #678;
}
.form-control {
    width: 95%;
}
label small {
    color: #678 !important;
}
span.req {
    color:maroon;
    font-size: 112%;
}
  </style>  
  
  <script>
//validates text only
function Validate(txt) {
    //txt.value = txt.value.replace(/^(?=.*\d)[a-zA-Z\s\d\/]+$/, '');
}
function checkPass()
{
    //Store the password field objects into variables ...
    var pass1 = document.getElementById('pass');
    var pass2 = document.getElementById('cnfrmpass');
    //Store the Confimation Message Object ...
    var message = document.getElementById('confirmMessage');
    //Set the colors we will be using ...
    var goodColor = "#66cc66";
    var badColor = "#ff6666";
    //Compare the values in the password field 
    //and the confirmation field
    if(pass1.value == pass2.value){
        //The passwords match. 
        //Set the color to the good color and inform
        //the user that they have entered the correct password 
        pass2.style.backgroundColor = goodColor;
        message.style.color = goodColor;
        message.innerHTML = "Passwords Matched"
    }else{
        //The passwords do not match.
        //Set the color to the bad color and
        //notify the user.
        pass2.style.backgroundColor = badColor;
        message.style.color = badColor;
        message.innerHTML = "Passwords Not Matched!"
    }
} 
// validate email
function email_validate(email)
{
var regMail = /^([_a-zA-Z0-9-]+)(\.[_a-zA-Z0-9-]+)*@([a-zA-Z0-9-]+\.)+([a-zA-Z]{2,3})$/;
 
    if(regMail.test(email) == false)
    {
    document.getElementById("status").innerHTML    = "<span class='warning'>Email address is not valid yet.</span>";
    }
    else
    {
    document.getElementById("status").innerHTML	= "<span class='valid'>Thanks, you have entered a valid Email address!</span>"; 
    }
}
</script>
        
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
<div class="row">
<div class="col-md-6">
<h2></h2>
<form action="adduserprocess.jsp" method="post" id="fileForm" role="form">
<fieldset><legend class="text-center">Valid information is required to register. <span class="req"><small> required *</small></span></legend>
  
    <div class="form-group">
<label for="username"><span class="req">* </span> User name:  <small>This will be your login user name</small> </label> 
<input class="form-control" type="text" name="username" id = "txt" onkeyup = "Validate(this)" placeholder="Enter Username" required />  
<div id="errLast"></div>
</div>
<div class="form-group">
<label for="password"><span class="req">* </span> Password: </label>
<input required name="pass" type="password" class="form-control inputpass" minlength="4" maxlength="16"  id="pass" /> </p>
 
<label for="password"><span class="req">* </span> Confirm Password: </label>
<input required name="password" type="password" class="form-control inputpass" minlength="4" maxlength="16" placeholder="Enter again to validate"  id="cnfrmpass" onkeyup="checkPass(); return false;" />
<span id="confirmMessage" class="confirmMessage"></span>
</div>
<div class="form-group">
<label for="email"><span class="req">* </span> Email Address: </label> 
<input class="form-control" required type="email" name="email" id = "email" placeholder="abc@domain.com"  onchange="email_validate(this.value);" required />   
<div class="status" id="status"></div>
</div>
 
<div class="form-group">
<input class="btn btn-primary" type="submit" name="submit_reg" value="Register">
</div>       
        
        
              
     </fieldset></form>
        </div><!-- ends col-6 -->
 
</div>
</div>
 
<footer class="container-fluid text-center">
  <p>© Untitled. All rights reserved.</p>
</footer>
</body>
</html>