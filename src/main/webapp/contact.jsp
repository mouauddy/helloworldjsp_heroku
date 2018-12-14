<html>
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
      <form method="post" action="contactprocess.jsp">
     
              
            <div class="form-group"><label class="l1">First Name<input type="text" name="fname"  class="form-control" id="nameField" placeholder="Enter Firstname"></label></div>
            <div class="form-group"><label class="l1">Last Name<input type="text" name="lname" class="form-control" id="nameField" placeholder="Enter Lastname" /></label></div>
            <div class="form-group"><label class="l1">Email<input type="email" name="email" class="form-control" id="nameField" placeholder="abc@domain.com" /></label></div>
            <div class="form-group"><label class="l1">Address<textarea class="form-control" name="uaddress" id="nameField" placeholder="Enter Address"></textarea></label></div>
            <div class="form-group"><label class="l1">Phone<input type="text" name="mobile" class="form-control" id="nameField" placeholder="(XXX)-XXX-XXXX"/></label></div>
            <div class="form-group"><label class="l1">Date of Birth<input type="date" name="dob" class="form-control" id="nameField" placeholder="dd/mm/yyyy"/></label></div>
            
            <button type="submit" class="btn btn-primary" id="b1">Submit</button>
            <button type="reset" class="btn btn-default" id="b2">Reset</button>
              
        </form>
   <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    </body>
</html>