<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
  <!-- Bootstrap core CSS -->
  <link href="bootstrap-4.3.1/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- fontAwsome CDN link -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
   integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
   crossorigin="anonymous">

<link rel="stylesheet" type="text/css" href="createLogin.css">
<link rel="shortcut icon" type="text/x-icon" href="images/posv2Logo3.png">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css">
</head>
<body>
    
 <span class="animated zoomIn delay-1s" id="userNameIcon"><i class="fas fa-user  fa-1x" ></i></span>
 <span class="animated zoomIn delay-1s" id="passwordIcon"><i class="fas fa-key  fa-1x" ></i></span>
 
  <div class="animated zoomIn 5s">
  <div class="titleLogo" align="center">             
  <img alt="title-logo" src="images/posv2SingleLogo.png" width="105" height="102">
  </div>
                 
   <form action="#" method="GET" class="form">
   <div>
   <input type="text" name="userName" class="form-inputs" placeholder="Username">               
   </div>
  
   <div>
   <input type="password" name="password" class="form-inputs" placeholder="Password">               
   </div>    
   
   <div>
   <input type="submit" class="submit" value="submit">               
   </div>      
  </form>   
  </div>
           

           
           
         
</body>
</html>