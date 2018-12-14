<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="bean.AccountDao"%>  
<jsp:useBean id="obj" class="bean.loginbean"/>  
  
<jsp:setProperty property="*" name="obj"/>  
 <html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logged In</title>
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

            font-size: 48px;
            color:#ffffff;
            text-align: center;
            margin-top: -130px;
            position: absolute;
            top: 50%;
            width: 100%;
            font-variant: small-caps;
        }
        #login_btn {
            border: none;
            color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            background-color: white;
            color: black;
            border: 2px solid #0293ff; 
            border-radius: 8px;
            margin-top: 20%;
            margin-left:47%;
            transition-duration: 0.4s
        }
        #login_btn:hover {
            background-color: #0293ff; 
            color: white;
        }
        #login_btn:onclick {
            background-color: #0293ff; 
            color: white;
        }

    </style>
</head>
<body>
  <img id="banner" src="image\banner_img1.jpg"" alt="Banner Image"/>
    <!-- <img id ="logo" src ="\loginRegistrationResources\logo.jpg" alt ="Logo Image"/> --> 
    <% boolean status=AccountDao.validate(obj);  

if(status==true){ %>
<h1 id = "welcometext" align="center">Successfully Logged in</h1>
<% } else { %>
<h1 id = "welcometext" align="center">"Sorry, email or password error"</h1>
<% } %>
 <form action="index.jsp">
        <input type="submit" name = "login" id="login_btn" value = "Login" onclick="index.jsp"><br><br>   
 

  </form> </body>
</html>
