<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ include file="index.jsp" %>
<%@page import="bean.AccountDao"%>  
<jsp:useBean id="obj" class="bean.adduserbean"/>  
  
<jsp:setProperty property="*" name="obj"/>  
 <html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logged In</title>
    <style>
div.ex {
	text-align: right width:300px;
	padding: 10px;
	border: 5px solid grey;
	margin: 0px
}
</style>
</head>
<body>
 <div style="margin-top: 10px" class="ex">
	<table style="with: 50%">
	<tr><td>
<%  
int userstatus=AccountDao.adduser(obj);  
if(userstatus>0)
{
	out.println("registered successfully !");  
}  
  
else  
{  
out.print("Sorry, email or password error");  
%>  

<%  
}  
%>  
<tr></tr><tr><td></td><td></td><td><a href="login.jsp"><b>Logout</b></a></td></tr>
</table>
</div>
</body>
</html>
<%-- <html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logged In</title>
</head>
<body>
	<table style="with: 50%">
	<tr><td>
	<% String username = request.getParameter("username"); %>
<a>Welcome   <% out.println(username); %> User!!!! You have logged in.</a></td></tr>
<tr></tr><tr><td></td><td></td><td><a href="login.jsp"><b>Logout</b></a></td></tr>
</table>
</body>
</html> --%>