<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ include file="index.jsp" %>
       
<!DOCTYPE html>
<html>
<head>
<style>
div.ex {
	text-align: right width:300px;
	padding: 10px;
	border: 5px solid grey;
	margin: 0px
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
<div class="ex">
<h4> Contact Page</h4>
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
                       <td colspan="3"><input type="submit" value="Submit" /></td> 
                       <!--  <td colspan="2"><input type="reset" value="Reset" /></td> -->
                    </tr>
             
            </table>
           
</form>
</div>
</body>
</html>
