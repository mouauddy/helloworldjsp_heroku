<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ include file="index.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h4> Contact Page</h4>
<center>
            <table border="0" width="30%" cellpadding="3">
                <thead>
                    <tr>
                        <th colspan="2">Add contact  Here</th>
                    </tr>
                </thead>
                <tbody>
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
                    
                </tbody>
            </table>
            </center>

</body>
</html>