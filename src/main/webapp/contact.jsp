<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <style>
 .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
    
  .carousel-inner img {
      width: 100%; /* Set width to 100% */
      margin: auto;
      min-height:200px;
  }

  /* Hide the carousel text when the screen is less than 600 pixels wide */
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; 
    }
  }
   footer {
  position: absolute;
  bottom: -110px;
  width: 100%;
  height: 30px;
}
body {
    padding-top:0px;
}
fieldset {
    border: thin solid #ccc; 
    border-radius: 4px;
    padding: 20px;
    padding-left: 40px;
    background: #fbfbfb;
}
legend {
   color: #678;
}
.form-control {
    width: 95%;
}
label small {
    color: #678 !important;
}
span.req {
    color:maroon;
    font-size: 112%;
}
  </style> 
<Script language="javascript">

//validates text only
function Validate(txt) {
    txt.value = txt.value.replace(/^(?=.*\d)[a-zA-Z\s\d\/]+$/, '');
}
//validate email
function email_validate(email)
{
var regMail = /^([_a-zA-Z0-9-]+)(\.[_a-zA-Z0-9-]+)*@([a-zA-Z0-9-]+\.)+([a-zA-Z]{2,3})$/;
 
    if(regMail.test(email) == false)
    {
    document.getElementById("status").innerHTML    = "<span class='warning'>Email address is not valid yet.</span>";
    }
   /*  else
    {
    document.getElementById("status").innerHTML	= "<span class='valid'>Thanks, you have entered a valid Email address!</span>"; 
    } */
}
function validatephone(phone) 
{
    var maintainplus = '';
    var numval = phone.value
    if ( numval.charAt(0)=='+' )
    {
        var maintainplus = '';
    }
    curphonevar = numval.replace(/[\\A-Za-z!"£$%^&\,*+_={};:'@#~,.Š\/<>?|`¬\]\[]/g,'');
    phone.value = maintainplus + curphonevar;
    var maintainplus = '';
    phone.focus;
} 
// validate date of birth
 function dob_validate(dob)
{
var regDOB = /^([0-9]{4})-((?:0?[1-9])|(?:1[0-2]))-((?:0?[1-9])|(?:[1-2][0-9])|(?:3[01]))([0-9]{2}:[0-9]{2}:[0-9]{2})?$/;
 
    if(regDOB.test(dob) == false)
    {
   // document.getElementById("statusDOB").innerHTML	= "<span class='warning'>DOB is only used to verify your age.</span>";
    }
    else
    {
    document.getElementById("statusDOB").innerHTML	= "<span class='valid'>Thanks, you have entered a valid DOB!</span>"; 
    } 
} 

</Script> 
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
        <li><a href="index.jsp">Home</a></li>
        <li class="active"><a href="contact.jsp">Contact</a></li>
        <li><a href="account.jsp">Account</a></li>
      
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>
<div class="container">
<div class="row">
<div class="col-md-6">

<form action="contactprocess.jsp" method="post" id="fileForm" role="form">
<fieldset><legend class="text-center">Valid information is required to contact. <span class="req"><small> required *</small></span></legend>
  
<div class="form-group"> 
<label for="firstname"><span class="req">* </span> First name: </label>
<input class="form-control" type="text" name="fname" id = "txt" placeholder="Enter Firstname" onkeyup = "Validate(this)" required /> 
<div id="errFirst"></div>    
</div>
 
<div class="form-group">
<label for="lastname"><span class="req">* </span> Last name: </label> 
<input class="form-control" type="text" name="lname" id = "txt" onkeyup = "Validate(this)" placeholder="Enter Lastname" required />  
<div id="errLast"></div>
</div>
<div class="form-group">
<label for="email"><span class="req">* </span> Email Address: </label> 
<input class="form-control" required type="email" name="email" id = "email" placeholder="abc@domain.com"  onchange="email_validate(this.value);" required />   
<div class="status" id="status"></div>
</div>
 <div class="form-group">
<label for="address"><span class="req">* </span>  Address: </label> 
            <textarea required class="form-control" name="uaddress" id="nameField" onkeyup = "add_validate(this)" placeholder="Enter Address"></textarea>
            <div class="status" id="statusAdd"></div>
            </div>
 <div class="form-group">
<label for="phonenumber"><span class="req">* </span> Phone Number: </label>
<input required type="text" name="mobile" id="mobile" class="form-control phone" maxlength="28" onkeyup="validatephone(this);" placeholder="(XXX)-XXX-XXXX"/> 
</div> 
   <div class="form-group">
<label for="dob"><span class="req">* </span> Date of Birth: </label></label>
            <input required type="date" name="dob" class="form-control" id="nameField" placeholder="dd/mm/yyyy" onkeyup="dob_validate(this);"/>
             <div class="status" id="statusDOB"></div>
            </div>
 
<div class="form-group">
<input class="btn btn-primary" type="submit" name="submit_reg" value="Submit">
</div>
</fieldset>
</form><!-- ends contact form -->
</div><!-- ends col-6 -->
 
</div>
</div>

<footer class="container-fluid text-center">
  <p>© untitled. all rights reserved.</p>
</footer> 
    </body>
</html>