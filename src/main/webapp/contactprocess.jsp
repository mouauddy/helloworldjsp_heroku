
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%@page import="bean.AccountDao"%>  
    
<jsp:useBean id="obj" class="bean.contactbean"/>  
  
<jsp:setProperty property="*" name="obj"/>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Display</title>
<style>
table#nat{
	width: 50%;
	background-color: #E6E6FA;
}
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
</br>	
<% 
int status=AccountDao.save(obj);  
if(status>0)

	out.print("contact successfully added");  
	String fname = obj.getUname();// request.getParameter("uname");
	String lname =  obj.getlname();//request.getParameter("lname");
	String Addr = obj.getAddress();//request.getParameter("address");
	String email = obj.getEmail();//request.getParameter("email");
	String contactno = obj.getContactno();//request.getParameter("contactno");
	String dob = obj.getdob();//getParameter("dob");
	

	%>


<table id ="nat">
<tr>
	<td>Full Name</td>
	<td><%= fname %> &nbsp; <%= lname %></td>
</tr>
<tr>
	<td>Address</td>
	<td><%= Addr %></td>
</tr>
<tr>
	<td>Email</td>
	<td><%= email %></td>
</tr>
<tr>
	<td>Contact no</td>
	<td><%= contactno %></td>
</tr>
<tr>
	<td>Date of Birth</td>
	<td><%= dob %></td>
</tr>
<tr></tr><tr><td></td><td></td><td><a href="index.jsp"><b>Back</b></a></td></tr>
</table>
	</div>
</body>
</html>