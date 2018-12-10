
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>
var isErr = false;

function validateForm() {
    if (username.value == "") {
        isErr = true;
        username.setCustomValidity("Please Enter Username.");
        //login_username.focus();

    } else if (pass.value == "") {
        isErr = true;
        pass.setCustomValidity("Please Enter Password.");
        //login_password.focus();		
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
        #banner {
            position: absolute;
            top: 0px;
            left: 0px;
            right: 0px;
            width: 100%;
            height: 100%;
            z-index: -1;
        }

        #logo {
            position: absolute;
            top: 125px;
            left: 50px;
            right: 0px;
            width: 150px;
            height: 150px;
            z-index: -1;
        }

        #welcometext{

            font-size: 38px;
            color: #ffffff;
            text-align: center;
            margin-top: -170px;
            position: absolute;
            top: 30%;
            width: 100%;
            font-variant: small-caps;
        }

        #errormsg{

            font-size: 48px;
            color: #ff0202 ;
            text-align: center;
            margin-top: -80px;
            position: absolute;
            top: 50%;
            width: 100%;
            font-size: small;
            font-variant: small-caps;
        }

        #loginfieldset{
            color: #ffffff; /* Blue */
            align: center;
            position: absolute;
            font-variant: small-caps;
            top:30%;
            width : 20%;
            left : 40%;	
        }

        input[type="text"] {
            display: block;
            margin-top: 10;
            width: 100%;
            font-family: sans-serif;
            font-size: 15px;
            color:#0293FF;
        }
        input[type="text"]:focus {
            border: solid 1px blue;
            box-shadow: 0 0 5px 1px #02aaff;
        }


        input[type="Password"] {
            display: block;
            margin-top: 10;
            width: 100%;
            font-family: sans-serif;
            font-size: 15px;
            color:#0293FF;
        }
        input[type="Password"]:focus {
            border: solid 1px blue;
            box-shadow: 0 0 5px 1px #02aaff;
        }

        #login_btn {
            border: none;
            color: white;
            width: 100%;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            background-color: white;
            color: black;
            border: 2px solid #0293ff; 
            border-radius: 8px;
            transition-duration: 0.4s
        }
        #login_btn:hover {
            background-color: #0293ff; 
            color: white;
        }

        #signup_btn{
            border: none;
            color: white;
            width: 50%;
            padding: 15px 32px;
            text-align: center;
            display: inline-block;
            font-size: 12px;
            background-color: white;
            color: black;
            border-radius: 8px;
            transition-duration: 0.4s;
            align-content: center;
        }
        #signup_btn:hover {
            background-color: #0293ff; 
            color: white;
        }

    </style>
    
</head>
<body>
<!-- display tasks here -->
  <img id="banner" src="image\banner_img1.jpg" alt="Banner Image"/>
	<!-- <img id ="logo" src ="\loginRegistrationResources\logo.jpg" alt ="Logo Image"/> -->
 <h3 id = "welcometext" align="center">Welcome To MySite</h3>
  <%--   <h6 id = "errormsg" align="center"><%= session.getAttribute("error_msg")%></h6> --%>
 
  <fieldset id="loginfieldset">
        <legend><b> Login </b></legend>
  
   <form name="loginform" id="loginform" action="loginprocess.jsp" method="post">
            <br>Username:<br>
            <input type="text" name="username" id="username" ><br><br>
            Password:<br>
            <input type="Password" name="pass" id="pass"><br><br>

            <input type="submit" name = "login" id="login_btn" value = "Login" onclick="javascript:validateForm();"><br><br>

            <a href="register.jsp" name = "signup"  id = "signup_btn" >Sign Up</a>

        </form>
</fieldset>

</body>
</html>