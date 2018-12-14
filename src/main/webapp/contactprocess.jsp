
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%@page import="bean.AccountDao"%>  
    
<jsp:useBean id="obj" class="bean.contactbean"/>  
  
<jsp:setProperty property="*" name="obj"/>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
                       
                        <li class="active"><a href="contact.jsp">Contact</a></li>
                        <li><a href="account.jsp">Accounts</a></li>
                       
                    </ul>
                </div>
            </div>
        </div>
<% 
int status=AccountDao.save(obj);  
if(status>0)

	out.print("contact successfully added");  
	String fname = obj.geFname();// request.getParameter("uname");
	String lname =  obj.getLname();//request.getParameter("lname");
	String Addr = obj.getUaddress();//request.getParameter("address");
	String email = obj.getEmail();//request.getParameter("email");
	String contactno = obj.getMobile();//request.getParameter("contactno");
	String dob = obj.getDob();//getParameter("dob");


	%>


<table class="table table-striped">
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
	   <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</body>
</html>