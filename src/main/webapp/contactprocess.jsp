
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ include file="index.jsp" %>
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
	background-color: #c48ec5;
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
	 <div style="margin-top: 10px" class="ex">
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