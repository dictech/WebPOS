
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Attendant</title>
  
  <!-- Bootstrap core CSS -->
  <link href="bootstrap-4.3.1/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- fontAwsome CDN link -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
   integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
   crossorigin="anonymous">

  <!-- Custom styles for this template -->
  <link href="bootstrap-4.3.1/css/shop-homepage.css" rel="stylesheet">
  <link href="account.css" rel="stylesheet" >
  <link rel="shortcut icon" type="text/x-icon" href="images/posv2Logo3.png">

</head>

<body>

  <!-- Navigation -->
  <div id="nav">
    <jsp:include page="/include/common/nav.jsp" />
  </div>

  <!-- Page Content -->
  <div class="container">

    <div class="row">
 
      <div class="col-lg-3">
         <div id="sidebar">
          <jsp:include page="/include/common/sideBar.jsp" />
         </div>
      </div> 

      
      <!-- /.col-lg-3 -->

      <div class="col-lg-9">


      <div class="form">
      
             <form action="AttendantCtrl" method="post" style="width: 670px; margin:auto;">
                
                <i class="fas fa-user" id="firstNameIcon"></i>
                <i class="fas fa-user" id="lastNameIcon"></i>
                <i class="fas fa-user" id="middleNameIcon"></i>
                <i class="fas fa-address-card" id="addressIcon"></i>
                <i class="fas fa-envelope" id="emailIcon"></i>
                <i class="fas fa-phone" id="phoneIcon"></i>
                <i class="fas fa-mars" id="genderIcon"></i>
                <i class="fas fa-briefcase" id="positionIcon"></i>
                <i class="fas fa-user-circle" id="userNameIcon"></i>
                <i class="fas fa-key" id="passwordIcon"></i>
                
                
                
             <div class="row">
               <fieldset>
                <legend style="color: #008080; font-weight: bold;">Create Account</legend>
              </fieldset> 
             </div> <br/>
            
            <div class="row">
             <div class="col">                 
              <div class="form-group">
               <label for="firstName">FirstName<span class="leb-design">*</span></label>
               <input type="text" name="firstName" class="form-control" style="padding-left: 40px;" required/>
              </div>
             </div>
             
              <div class="col">
               <div class="form-group">
               <label for="lastName">LastName<span class="leb-design">*</span></label>
               <input type="text" name="lastName" class="form-control" style="padding-left: 40px;" required/>
               </div>
              </div>
                
             </div>
             
             <div class="row">
             
              <div class="col">
               <div class="form-group">
               <label for="middleName">MiddleName<span class="leb-design">*</span></label> 
               <input type="text" name="middleName" class="form-control" style="padding-left: 40px;" required>
              </div>
             </div> 
             
              <div class="col">
                <div class="form-group">
                  <label for="phone">Phone<span class="leb-design">*</span></label>
                  <input type="text" name="phone" class="form-control" style="padding-left: 40px;" required/>
                </div>
              </div>
             </div>
             
            <div class="row"> 
             
              <div class="col">
                <div class="form-group">
                  <label for="dob">Date of birth<span class="leb-design">*</span></label>
                  <input type="date" name="dob" class="form-control" required/>
                </div>
              </div>
              
              <div class="col-3">
               <div class="form-group">
               <label for="gender">Gender<span class="leb-design">*</span></label> 
                <select name="gender" class="form-control" style="padding-left: 40px;" required>
                <option selected></option>
                <option value="male">Male</option>
                <option value="female">Female</option>
               </select>
              </div>
             </div>
             </div>
             
              <div class="row">
               <div class="col">
                <div class="form-group">
               <label for="address">Address<span class="leb-design">*</span></label>
               <textarea name="address" class="form-control" rows="4" cols="1" style="padding-left: 40px;" required>
               </textarea>
              </div>
               </div>
               
                <div class="col"></div>
              </div>
              
               <div class="form-group">
               <label for="email">Email<span class="leb-design">*</span></label> 
               <input type="email" name="email" class="form-control"  style="padding-left: 40px;" required/>
               </div>
               
            <div class="row">
             
              <div class="col">
               <div class="form-group">
               <label for="position">Position<span class="leb-design">*</span></label> 
                <select name="position" class="form-control" style="padding-left: 40px;" required>
                <option></option>
                <option>Attendant</option>
                <option>Manager</option>
               </select>
               </div>
             </div> 
             
              <div class="col">
                <div class="form-group">
                  <label for="doe">Date of employment</label>
                  <p class="form-control"><%= new java.util.Date() %></p>
                </div>
              </div>
             </div>
               
                            
            <div class="row">
             
              <div class="col">
               <div class="form-group">
               <label for="username">UserName<span class="leb-design">*</span></label> 
                <input type="text" name="userName" class="form-control" style="padding-left: 40px;" required/>
              </div>
             </div> 
             
              <div class="col">
                <div class="form-group">
                  <label for="password">Password<span class="leb-design">*</span></label>
                  <input type="password" name="password" class="form-control" style="padding-left: 40px;" required/>
                </div>
              </div>
             </div><br>
             
                              
             <div class="form-check">
               <input type="checkbox" name="acceptTerms" class="form-check-input" >
               <label for="accept terms" class="form-check-label">Accept terms &amp; policy </label>
             </div>
             <br><br>
             <input type="submit" value="Continue" class="btn btn-outline-secondary" style="font-weight: bold; font-family: georgia;">
          </form>
      
      
      
      
      </div>

      </div>
      <!-- /.col-lg-9 -->

    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->

  <!-- Footer -->
  <div id="footer">
    <jsp:include page="/include/common/footer.jsp" />
  </div>

  <!-- Bootstrap core JavaScript -->
  <script src="bootstrap-4.3.1/vendor/jquery/jquery.min.js"></script>
  <script src="bootstrap-4.3.1/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>

