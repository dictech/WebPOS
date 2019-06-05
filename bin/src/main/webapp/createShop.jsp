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
            
               <table class="table">
                  <thead>
                    <tr>
                      <th scope="col">#</th>
                      <th scope="col">Org Name</th>
                      <th scope="col">Address</th>
                      <th scope="col">Phone No.</th>
                      <th scope="col">Email.</th>
                      <th scope="col">
                        <div class="text-right">
                          <button type="submit" 
                                  class="btn btn-success btn-sm"
                                  data-toggle="modal"
                                  data-target="#addOrgModal">
                                  <span class="glyphicon  glyphicon-star" aria-hidden="true""></span>Add
                          </button>
                        </div>
                      </th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <th scope="row">1</th>
                      <td>Mark</td>
                      <td>Otto</td>
                      <td>@mdo</td>
                      <td>@mdo</td>
                      <td>
                        <div class="text-right">
                          <button type="submit" 
                                  class="btn btn-primary btn-sm"
                                  data-toggle="modal"
                                  data-target="#updateOrgModal">
                                  <span class="glyphicon glyphicon-search"></span>Update
                          </button>

                          <button type="submit" 
                                  class="btn btn-danger btn-sm"
                                  data-toggle="modal"
                                  data-target="#deleteOrgModal">
                                  <span class="glyphicon glyphicon-search"></span> Delete
                          </button>
                        </div>
                      </td>
                    </tr>
                    <tr>
                      <th scope="row">2</th>
                      <td>Jacob</td>
                      <td>Thornton</td>
                      <td>@fat</td>
                      <td>@mdo</td>
                       <td>
                        <div class="text-right">
                          <button type="submit" class="btn btn-primary btn-sm"><span class="glyphicon glyphicon-search"></span>Update</button>
                          <button type="submit" class="btn btn-danger btn-sm"> <span class="glyphicon glyphicon-search"></span> Delete</button>
                        </div>
                      </td>
                    </tr>
                    <tr>
                      <th scope="row">3</th>
                      <td>Larry</td>
                      <td>the Bird</td>
                      <td>@twitter</td>
                      <td>@mdo</td>
                      <td>
                        <div class="text-right">
                          <button type="submit" class="btn btn-primary btn-sm"><span class="glyphicon glyphicon-search"></span>Update</button>
                          <button type="submit" class="btn btn-danger btn-sm"> <span class="glyphicon glyphicon-search"></span> Delete</button>
                        </div>
                      </td>
                    </tr>
                  </tbody>
                </table>
           </div>

           <!--addOrgModal  Modal -->
            <div class="modal fade" id="addOrgModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Add new Organization</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                    <form>
                      <div class="form-group row">
                        <label for="colFormLabel" class="col-sm-3 col-form-label">Org. Name:</label>
                        <div class="col-sm-7">
                          <input type="email" class="form-control" id="colFormLabel" placeholder="enter Organization name">
                        </div>
                      </div>

                      <div class="form-group row">
                        <label for="colFormLabel" class="col-sm-3 col-form-label">Phone No:</label>
                        <div class="col-sm-4">
                          <input type="tel" class="form-control" id="colFormLabel" placeholder="enter phone No.">
                        </div>
                      </div>

                      <div class="form-group row">
                        <label for="colFormLabel" class="col-sm-3 col-form-label">Email:</label>
                        <div class="col-sm-4">
                          <input type="email" class="form-control" id="colFormLabel" placeholder="enter email">
                        </div>
                      </div>
                    </form>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                  </div>
                </div>
              </div>
            </div>
            <!-- addOrgModal Modal -->

            <!-- updateOrgModal Modal -->
            <div class="modal fade" id="updateOrgModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Add new Organization</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                    <form>
                      <div class="form-group row">
                        <label for="colFormLabel" class="col-sm-3 col-form-label">Org. Name:</label>
                        <div class="col-sm-7">
                          <input type="email" class="form-control" id="colFormLabel" placeholder="enter Organization name">
                        </div>
                      </div>

                      <div class="form-group row">
                        <label for="colFormLabel" class="col-sm-3 col-form-label">Phone No:</label>
                        <div class="col-sm-4">
                          <input type="tel" class="form-control" id="colFormLabel" placeholder="enter phone No.">
                        </div>
                      </div>

                      <div class="form-group row">
                        <label for="colFormLabel" class="col-sm-3 col-form-label">Email:</label>
                        <div class="col-sm-4">
                          <input type="email" class="form-control" id="colFormLabel" placeholder="enter email">
                        </div>
                      </div>
                    </form>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                  </div>
                </div>
              </div>
            </div>
            <!-- updateOrgModal Modal -->
            

             <!-- deleteOrgModal Modal -->
            <div class="modal fade" id="deleteOrgModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Add new Organization</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                    <form>
                      <div class="form-group row">
                        <label for="colFormLabel" class="col-sm-3 col-form-label">Org. Name:</label>
                        <div class="col-sm-7">
                          <input type="email" class="form-control" id="colFormLabel" placeholder="enter Organization name">
                        </div>
                      </div>

                      <div class="form-group row">
                        <label for="colFormLabel" class="col-sm-3 col-form-label">Phone No:</label>
                        <div class="col-sm-4">
                          <input type="tel" class="form-control" id="colFormLabel" placeholder="enter phone No.">
                        </div>
                      </div>

                      <div class="form-group row">
                        <label for="colFormLabel" class="col-sm-3 col-form-label">Email:</label>
                        <div class="col-sm-4">
                          <input type="email" class="form-control" id="colFormLabel" placeholder="enter email">
                        </div>
                      </div>
                    </form>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                  </div>
                </div>
              </div>
            </div>
            <!-- deleteOrgModal Modal -->


            <!-- Branch Tab pane -->
           <div class="tab-pane fade" id="branch" role="tabpanel" aria-labelledby="BranchTab">

        <div class="tab-content">
          <div class="tab-pane fade show active" id="org" role="tabpanel" aria-labelledby="OrgTab">
            
               <table class="table">
                  <thead>
                    <tr>
                      <th scope="col">#</th>
                      <th scope="col">Org Name</th>
                      <th scope="col">Address</th>
                      <th scope="col">Phone No.</th>
                      <th scope="col">Email.</th>
                      <th scope="col">
                        <div class="text-right">
                          <button type="submit" 
                                  class="btn btn-success btn-sm"
                                  data-toggle="modal"
                                  data-target="#addBranchModal">
                                  <span class="glyphicon  glyphicon-star" aria-hidden="true""></span>Add
                          </button>
                        </div>
                      </th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <th scope="row">1</th>
                      <td>Mark</td>
                      <td>Otto</td>
                      <td>@mdo</td>
                      <td>@mdo</td>
                      <td>
                        <div class="text-right">
                          <button type="submit" 
                                  class="btn btn-primary btn-sm"
                                  data-toggle="modal"
                                  data-target="#updateBranchModal">
                                  <span class="glyphicon glyphicon-search"></span>Update
                          </button>

                          <button type="submit" 
                                  class="btn btn-danger btn-sm"
                                  data-toggle="modal"
                                  data-target="#deleteBranchModal">
                                  <span class="glyphicon glyphicon-search"></span> Delete
                          </button>
                        </div>
                      </td>
                    </tr>
                    <tr>
                      <th scope="row">2</th>
                      <td>Jacob</td>
                      <td>Thornton</td>
                      <td>@fat</td>
                      <td>@mdo</td>
                       <td>
                        <div class="text-right">
                          <button type="submit" class="btn btn-primary btn-sm"><span class="glyphicon glyphicon-search"></span>Update</button>
                          <button type="submit" class="btn btn-danger btn-sm"> <span class="glyphicon glyphicon-search"></span> Delete</button>
                        </div>
                      </td>
                    </tr>
                    <tr>
                      <th scope="row">3</th>
                      <td>Larry</td>
                      <td>the Bird</td>
                      <td>@twitter</td>
                      <td>@mdo</td>
                      <td>
                        <div class="text-right">
                          <button type="submit" class="btn btn-primary btn-sm"><span class="glyphicon glyphicon-search"></span>Update</button>
                          <button type="submit" class="btn btn-danger btn-sm"> <span class="glyphicon glyphicon-search"></span> Delete</button>
                        </div>
                      </td>
                    </tr>
                  </tbody>
                </table>
           </div>
           </div>
         </div>
        <!-- Branch Tab pane -->

           <!--addBranchModal Modal -->
            <div class="modal fade" id="addBranchModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Add new Organization</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                   <form>
                     <br>
                    <div class="form-group row">
                      <label for="colFormLabel" class="col-sm-2 col-form-label">Brn. Name:</label>
                      <div class="col-sm-10">
                        <input type="email" class="form-control" id="colFormLabel" placeholder="enter branch name">
                      </div>
                    </div>

                    <div class="form-group row">
                      <label for="colFormLabel" class="col-sm-2 col-form-label">Address:</label>
                      <div class="col-sm-8">
                        <textarea rows="4" cols="50" class="form-control" id="colFormLabel" placeholder="enter branch address"></textarea>
                      </div>
                    </div>

                    <div class="form-group row">
                      <label for="colFormLabel" class="col-sm-2 col-form-label">LGA:</label>
                      <div class="col-sm-5">
                        <input type="tel" class="form-control" id="colFormLabel" placeholder="enter LGA of branch">
                      </div>
                    </div>

                    <div class="form-group row">
                      <label for="colFormLabel" class="col-sm-2 col-form-label">State:</label>
                      <div class="col-sm-5">
                        <input type="text" class="form-control" id="colFormLabel" placeholder="enter state.">
                      </div>
                    </div>

                  </form>

                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                  </div>
                </div>
              </div>
            </div>
            <!-- addBranchModal Modal -->


             <!--updateBranchModal Modal -->
            <div class="modal fade" id="updateBranchModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Add new Organization</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                   <form>
                     <br>
                    <div class="form-group row">
                      <label for="colFormLabel" class="col-sm-2 col-form-label">Brn. Name:</label>
                      <div class="col-sm-10">
                        <input type="email" class="form-control" id="colFormLabel" placeholder="enter branch name">
                      </div>
                    </div>

                    <div class="form-group row">
                      <label for="colFormLabel" class="col-sm-2 col-form-label">Address:</label>
                      <div class="col-sm-8">
                        <textarea rows="4" cols="50" class="form-control" id="colFormLabel" placeholder="enter branch address"></textarea>
                      </div>
                    </div>

                    <div class="form-group row">
                      <label for="colFormLabel" class="col-sm-2 col-form-label">LGA:</label>
                      <div class="col-sm-5">
                        <input type="tel" class="form-control" id="colFormLabel" placeholder="enter LGA of branch">
                      </div>
                    </div>

                    <div class="form-group row">
                      <label for="colFormLabel" class="col-sm-2 col-form-label">State:</label>
                      <div class="col-sm-5">
                        <input type="text" class="form-control" id="colFormLabel" placeholder="enter state.">
                      </div>
                    </div>

                  </form>

                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                  </div>
                </div>
              </div>
            </div>
            <!-- addBranchModal Modal -->



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

