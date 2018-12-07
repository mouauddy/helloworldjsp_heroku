<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     
       
<!DOCTYPE html>
<html>
<head>
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
<meta charset="ISO-8859-1">
<title>Twillo application</title>

</head>
<body>
 <div class ="ex" style="position: absolute;top: 0px;left: 0;height:100%;width: 100%;">
    <div style="background: #c48ec5;width: 100%;"><h2 style="color: white;">Welcome to the web application</h2>
    <a href="register.jsp" style="text-decoration: none;color: white;float: right;margin-top: 20px;margin-right: 5px;">Register here</a>
</div>
<a href="index.jsp">Home</a>|
<a href="contact.jsp">Contacts</a>|
<a href="account.jsp">Accounts</a>
<form action="contactprocess.jsp" method="post"> 
<table style="with: 50%">
             
                    <tr>
                        <th colspan="2">Add contact  Here</th>
                    </tr>
             
               
                    <tr>
                        <td>First Name</td>
                        <td><input type="text" name="uname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td><input type="text" name="lname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="text" name="email" value="" /></td>
                    </tr>
                    <tr>
                        <td>Address</td>
                        <td><input type="text" name="address" value="" /></td>
                    </tr>
                   
                    <tr>
                        <td>Date of birth</td>
                        <td><input type="text" name="dob" value="" /></td>
                    </tr>
                     <tr>
                        <td>Contact No</td>
                        <td><input type="text" name="contactno" value="" /></td>
                    </tr>
                    <tr>
                       <center><td colspan="3"><input type="submit" value="Submit" /></td></center> 
                       <!--  <td colspan="2"><input type="reset" value="Reset" /></td> -->
                    </tr>
             
            </table>
           
</form>
</div>
</body>
</html>
