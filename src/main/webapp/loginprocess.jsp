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
 <div class ="ex" style="position: absolute;top: 0px;left: 0;height:100%;width: 100%;">
    <div style="background: #c48ec5;width: 100%;"><h2 style="color: white;">Welcome to the web application</h2>
<a href="register.jsp" style="text-decoration: none;color: white;float: right;margin-top: 10px;margin-right: 5px;">Register here</a>
</div>
<a href="index.jsp">Home</a>|  

<a href="contact.jsp">Contacts</a>|
<a href="account.jsp">Accounts</a>
<div><br>
<%  
boolean status=AccountDao.validate(obj);  

if(status==true){  
out.println("You r successfully logged in");  
session.setAttribute("session","TRUE");  
}  
else  
{  
out.print("Sorry, email or password error");  
%>  
<%-- <jsp:include page="index.jsp"></jsp:include> --%>  
<%  
}  
%>  
</div>
<!-- <tr></tr><tr><td></td><td></td><td><a href="login.jsp"><b>Logout</b></a></td></tr> -->

</div>
</body>
</html>
