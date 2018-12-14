<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
}

</script>
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
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#mynavbar-content">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
         
            </div>
                <div class="collapse navbar-collapse" id="mynavbar-content">
                    <ul class="nav navbar-nav">
                        <li><a href="index.jsp">Home</a></li>                                              
                       
                        <li><a href="contact.jsp">Contact</a></li>
                        <li><a href="account.jsp">Accounts</a></li>
                       
                    </ul>
                </div>
            </div>
        </div>
      <form method="post" action="adduserprocess.jsp">
           
            <div class="form-group"><label class="l1">User Name<input type="text" name="username"  class="form-control" id="nameField" placeholder="Enter Username" /></label></div>
            <div class="form-group"><label class="l1">Password<input type="password" name="pass" class="form-control" id="nameField" placeholder="Enter password" /></label></div>
            <div class="form-group"><label class="l1">Confirm Password<input type="password" class="form-control" name="cnfrmpass" id="nameField" placeholder="Enter Confirm Password" /></label></div>
            <div class="form-group"><label class="l1">Email<input type="email" name="email" class="form-control" id="nameField" placeholder="abc@domain.com" /></label></div>
           
            
            <button type="submit" class="btn btn-primary" id="b1">Submit</button>
            <button type="reset" class="btn btn-default" id="b2">Reset</button>
              
        </form>
<!--   <img id="banner" src="image\banner_img1.jpg" alt="Banner Image"/>
	
	<h3 id = "welcometext" align="center">Register with MySite</h3>
		<fieldset id="signupForm">
            <legend><b> Registration </b></legend>
  <form name="sample" action="adduserprocess.jsp" method="post">
  
        <table align="center" cellpadding="5" cellspacing="0">
        
        <tr>
            <td>User Name:</td>
            <td><input type="text" name="username" id="namesfield" placeholder="required"></td>
        </tr>
		
		
        <tr>
            <td>Password:</td>
            <td><input type="password" name="pass" id="pass" placeholder="atleast 6 characters."></td>
        </tr>
		<tr>
            <td>Confirm Password:</td>
            <td><input type="password" name="cnfrmpass" id="cnfrmpass" placeholder="required"></td>
        </tr>
		<tr>
            <td>Email:</td>
            <td><input type="text" name="email" id="email" placeholder="required"></td>
        </tr>
		
		<tr>
			<td></td>
		</tr>
		<tr>
			<td></td> 
		</tr>
        <tr>
             <td>
                <input type="submit" value="Submit" id="submit_btm" onclick="javascript:validateForm();">
            </td>
            <td>    
                <input type="Reset" value="Reset" id="reset_btn">
            </td>
        </tr>
    </table>
  </form>
 </fieldset> -->
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</body>
</html>