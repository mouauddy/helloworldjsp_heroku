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
    <% boolean status=AccountDao.validate(obj);  

if(status==true){ %>
<table class="table table-striped">
<tr>
	<td colspan=2 align="center">Successfully Logged in</td>
	
</tr>
<tr></tr><tr><td></td><td></td><td><a href="index.jsp"><b>Back</b></a></td></tr>
</table>
<!-- 
<h1 id = "welcometext" align="center">Successfully Logged in</h1> -->
<% } else { %>
<table class="table table-striped">

<tr>
	<td colspan=2 align="center">"Sorry, email or password error"</td>

</tr>
<tr></tr><tr><td></td><td></td><td><a href="index.jsp"><b>Back</b></a></td></tr>
</table>
<!-- <h1 id = "welcometext" align="center">"Sorry, email or password error"</h1> -->
<% } %>


<!--  <form action="index.jsp">
        <input type="submit" class="btn btn-primary" name = "login" id="login_btn" value = "Login" onclick="index.jsp"><br><br>   
 

  </form> -->
   <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
   </body>
</html>
