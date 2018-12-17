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
 <div class="container">
      <ul class="nav nav-pills">
    <li class="active"><a href="#">Home</a></li>
    <li><a href="#">Menu 1</a></li>
    <li><a href="#">Menu 2</a></li>
    <li><a href="#">Menu 3</a></li>
  </ul>
  </div>
      <form method="post" action="Signedup.jsp">
            <div class="form-group"><label class="l1">First Name<input type="text" name="t1" class="form-control" id="nameField" placeholder=" Enter Firstname" /></label></div>
            <div class="form-group"><label class="l1">Last Name<input type="password" name="t3" class="form-control" id="nameField" placeholder="Enter Lastname" /></label></div>
            <div class="form-group"><label class="l1">Email<input type="email" name="t2" class="form-control" id="nameField" placeholder="abc@domain.com" /></label></div>
            <div class="form-group"><label class="l1">Address<textarea class="form-control" name="t5" id="nameField" placeholder="Enter Address"></textarea></label></div>
            <div class="form-group"><label class="l1">Phone<input type="text" name="t4" class="form-control" id="nameField" placeholder="(XXX)-XXX-XXXX"/></label></div>
            
            <button type="submit" class="btn btn-primary" id="b1">Signup</button>
            <button type="reset" class="btn btn-default" id="b2">Reset</button>    
        </form>
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </body>
</html>