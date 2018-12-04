<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="bean.AccountDao"%>  
<jsp:useBean id="obj" class="bean.loginbean"/>  
  
<jsp:setProperty property="*" name="obj"/>  
  
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
<jsp:include page="index.jsp"></jsp:include>  
<%  
}  
%>  
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logged In</title>
</head>
<body>
	<table style="with: 50%">
	<tr><td>
	<% String username = request.getParameter("username"); %>
<a>Welcome   <% out.println(username); %> User!!!! You have logged in.</a></td></tr>
<tr></tr><tr><td></td><td></td><td><a href="register_3.jsp"><b>Logout</b></a></td></tr>
</table>
</body>
</html>