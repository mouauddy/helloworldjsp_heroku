<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Logo</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="#">Contact</a></li>
        <li><a href="#">Account</a></li>
       <!--  <li><a href="#">Contact</a></li> -->
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="register.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>
<div class="container">
  <h2>Login Form</h2>
   <form method="post" action="loginprocess.jsp">
            
            <div class="col-xs-8">
            <label class="l1">User Name</label>
            <input type="text" name="username" class="form-control" id="nameField" placeholder="Enter username" />
            </div><br>
            <div class="col-xs-8"><label class="l1">Password</label><input type="password" name="pass" class="form-control" id="nameField" placeholder="********" /></div>
         <div class="col-xs-8">
               <br><button type="submit" class="btn btn-primary" id="b1" name="b1" value="Login">Login</button>
            <a href="register.jsp" class="btn btn-default">Sign Up?</a>
            </div>
            
            
            
        </form>
</div>

</body> 
</html>
