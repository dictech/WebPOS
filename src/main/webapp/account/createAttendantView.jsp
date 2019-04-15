<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> 
<link rel="stylesheet" type="text/css" href="createAttendantView.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>




 <div class="content-container">

        
   </div>       
         
          
   <div class="content-container">
   
                 
   
     <form class="needs-validation" novalidate>
     
               <div class="img-container">
                 <div class="img">
                 <img alt="some attendant picture" src="file:///C:/Users/uwem/Documents/myWebApp/WebPOS/src/main/webapp/images/light-blue-background2.jpg"  height="210px" width="210px">
                  </div>
                  <input type="file" placeholder="browse" class="ch-file" required>
                </div>
  <div class="form-row">
   
    <div class="col-md-4 mb-3">
      <label for="validationCustom01">First name</label>
      <input type="text" class="form-control" id="validationCustom01" placeholder="First name"  required>
    </div>
   
    
    <div class="col-md-4 mb-3">
      <label for="validationCustom02">middle name</label>
      <input type="text" class="form-control" id="validationCustom02" placeholder="middle name"  required>
    </div>
    
    <div class="col-md-4 mb-3">
      <label for="validationCustom02">Last name</label>
      <input type="text" class="form-control" id="validationCustom02" placeholder="Last name"  required>
    </div>
    
    <div class="col-md-6 mb-3">
      <label for="validationCustom03">Home Address</label>
      <input type="text" class="form-control" id="validationCustom03" placeholder="Address" required>
      <div class="invalid-feedback">
        Please provide a valid city.
      </div>
    </div>
    
    <div class="col-md-4 mb-3">
      <label for="validationCustom02">City</label>
      <input type="text" class="form-control" id="validationCustom02" placeholder="City" required>
      <div class="valid-feedback">
        Looks good!
      </div>
    </div>
    
    
  
    <div class="col-md-3 mb-3">
      <label for="validationCustom04">State</label>
      <input type="text" class="form-control" id="validationCustom04" placeholder="State" required>
    </div>
    
    <div class="col-md-3 mb-3">
      <label for="validationCustom05">Zip</label>
      <input type="text" class="form-control" id="validationCustom05" placeholder="Zip" required>
    </div>
  
  
      <div class="col-md-3 mb-3">
      <label for="validationCustom05">Date of Birth</label>
      <input type="text" class="form-control" id="validationCustom05" placeholder="Dob" required>
     </div>
      
     <div class="col-md-3 mb-3">
      <label for="validationCustom05">Date of emp</label>
      <input type="text" class="form-control" id="validationCustom05" placeholder="Doe" value="<%= new java.util.Date() %> " readonly>
     </div>
    
    <div class="col-md-6 mb-3">
      <label for="validationCustom03">Email</label>
      <input type="text" class="form-control" id="validationCustom03" placeholder="Email" required>
    </div>
    
     <div class="col-md-6 mb-3">
      <label for="validationCustom03">Phone Number</label>
      <input type="text" class="form-control" id="validationCustom03" placeholder="Phone Number" required>
       </div>
    

     <div class="col-md-6 mb-3">
      <label for="validationCustom03">Username</label>
      <input type="text" class="form-control" id="validationCustom03" placeholder="username" required>
       </div>
  
     <div class="col-md-6 mb-3">
      <label for="validationCustom03">Password</label>
      <input type="text" class="form-control" id="validationCustom03" placeholder="password" required>
       </div>
  
  </div>
  <div class="form-group">
    <div class="form-check">
      <input class="form-check-input" type="checkbox" value="" id="invalidCheck" required>
      <label class="form-check-label" for="invalidCheck">
        Agree to terms and conditions
      </label>
      <div class="invalid-feedback">
        You must agree before submitting.
      </div>
    </div>
  </div>
  <button class="btn btn-primary" type="submit">Submit form</button>
</form>
   
   </div>  
          
 
</body>
</html>