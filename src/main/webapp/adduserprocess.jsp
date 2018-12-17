<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="bean.AccountDao"%>  
<jsp:useBean id="obj" class="bean.adduserbean"/>  
  
<jsp:setProperty property="*" name="obj"/>  
 <html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
        <li class="active"><a href="contact.jsp">Contact</a></li>
        <li><a href="account.jsp">Account</a></li>
      
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li class="active"><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>
        <% 
int status=AccountDao.adduser(obj);  
if(status>0)

	out.print("");  
	String uname = obj.getUsername();// request.getParameter("uname");
	String email = obj.getEmail();//request.getParameter("email");
	
	%>


<table class="table table-striped">
<tr>
	
	<td colspan=2 align="center">Successfully registered &nbsp;<%= uname %> </td>
</tr>

<tr></tr><tr><td></td><td></td><td><a href="register.jsp"><b>Back</b></a></td></tr>
</table>


<footer class="container-fluid text-center">
  <p>© Untitled. All rights reserved.</p>
</footer>

</body>
</html>
