<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Shop Homepage - Start Bootstrap Template</title>

  <!-- Bootstrap core CSS -->
  <link href="bootstrap-4.3.1/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="bootstrap-4.3.1/css/shop-homepage.css" rel="stylesheet">

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
     
      <br>

      <ul class="nav nav-tabs">

        <li class="nav-item">
          <a class="nav-link active" 
             id="OrgTab" 
             href="#org" 
             data-toggle="tab" 
             role="tab" 
             aria-controls="org" 
             aria-selected="true">Organization</a>
        </li>

        <li class="nav-item">
          <a class="nav-link"
             id="branchTab"
             href="#branch"
             data-toggle="tab"
             role="tab"
             aria-control="branch"
             aria-selected="false">Branch</a>
        </li>

        <li class="nav-item">
          <a class="nav-link" href="#">Others</a>
        </li>
      </ul>


       <br>
        <div class="tab-content">
          <div class="tab-pane fade show active" id="org" role="tabpanel" aria-labelledby="OrgTab">
             <form>
              <div class="form-group row">
                <label for="colFormLabel" class="col-sm-4 col-form-label">Name of Organization:</label>
                <div class="col-sm-8">
                  <input type="email" class="form-control" id="colFormLabel" placeholder="enter Organization name">
                </div>
              </div>

              <div class="form-group row">
                <label for="colFormLabel" class="col-sm-4 col-form-label">Address:</label>
                <div class="col-sm-8">
                  <input type="email" class="form-control" id="colFormLabel" placeholder="enter Organization address">
                </div>
              </div>

              <div class="form-group row">
                <label for="colFormLabel" class="col-sm-4 col-form-label">Phone No:</label>
                <div class="col-sm-8">
                  <input type="email" class="form-control" id="colFormLabel" placeholder="enter phone No.">
                </div>
              </div>

              <div class="form-group row">
                <label for="colFormLabel" class="col-sm-4 col-form-label">Email:</label>
                <div class="col-sm-8">
                  <input type="email" class="form-control" id="colFormLabel" placeholder="enter email">
                </div>
              </div>
            </form>

              <br>
               <table class="table">
                  <thead>
                    <tr>
                      <th scope="col">#</th>
                      <th scope="col">Org Name</th>
                      <th scope="col">Address</th>
                      <th scope="col">Phone No.</th>
                      <th scope="col">Email.</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <th scope="row">1</th>
                      <td>Mark</td>
                      <td>Otto</td>
                      <td>@mdo</td>
                      <td>@mdo</td>
                    </tr>
                    <tr>
                      <th scope="row">2</th>
                      <td>Jacob</td>
                      <td>Thornton</td>
                      <td>@fat</td>
                      <td>@mdo</td>
                    </tr>
                    <tr>
                      <th scope="row">3</th>
                      <td>Larry</td>
                      <td>the Bird</td>
                      <td>@twitter</td>
                      <td>@mdo</td>
                    </tr>
                  </tbody>
                </table>
           </div>

           <div class="tab-pane fade" id="branch" role="tabpanel" aria-labelledby="BranchTab">
             <form>
                <div class="form-group">
                  <label for="exampleInputEmail1">Email address</label>
                  <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                </div>
                <div class="form-group">
                  <label for="exampleInputPassword1">Password</label>
                  <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                </div>
                <div class="form-group form-check">
                  <input type="checkbox" class="form-check-input" id="exampleCheck1">
                  <label class="form-check-label" for="exampleCheck1">Check me out</label>
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
              </form>

              <br>
               <table class="table">
                  <thead>
                    <tr>
                      <th scope="col">#</th>
                      <th scope="col">First</th>
                      <th scope="col">Last</th>
                      <th scope="col">Handle</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <th scope="row">1</th>
                      <td>Mark</td>
                      <td>Otto</td>
                      <td>@mdo</td>
                    </tr>
                    <tr>
                      <th scope="row">2</th>
                      <td>Jacob</td>
                      <td>Thornton</td>
                      <td>@fat</td>
                    </tr>
                    <tr>
                      <th scope="row">3</th>
                      <td>Larry</td>
                      <td>the Bird</td>
                      <td>@twitter</td>
                    </tr>
                  </tbody>
                </table>
           </div>
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

