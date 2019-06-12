<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Inventory page</title>

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
             id="categoryTab" 
             href="#category" 
             data-toggle="tab" 
             role="tab" 
             aria-controls="category" 
             aria-selected="true">Category</a>
        </li>

        <li class="nav-item">
          <a class="nav-link"
             id="productTab"
             href="#product"
             data-toggle="tab"
             role="tab"
             aria-control="product"
             aria-selected="false">Products</a>
        </li>


        <li class="nav-item">
          <a class="nav-link"
             id="inventoryTab"
             href="#inventory"
             data-toggle="tab"
             role="tab"
             aria-control="inventory"
             aria-selected="false">Inventory</a>
        </li>

      </ul>


       <br>
        <div class="tab-content">
          <div class="tab-pane fade show active" id="categoryPane" role="tabpanel" aria-labelledby="categoryTab">
            
               <table class="table">
                  <thead>
                    <tr>
                      <th scope="col">#</th>
                      <th scope="col">Category Name</th>
                      <th scope="col">Description</th>

                      <th scope="col">
                        <div class="text-right">
                          <button type="submit" 
                                  class="btn btn-success btn-sm"
                                  data-toggle="modal"
                                  data-target="#addCategoryModal">
                                  <span class="glyphicon  glyphicon-star" aria-hidden="true""></span>Add
                          </button>
                        </div>
                      </th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <th scope="row">1</th>
                      <td>Toiletries</td>
                      <td>Items used for cleaning and washing</td>
                      <td>
                        <div class="text-right">
                          <button type="submit" 
                                  class="btn btn-primary btn-sm"
                                  data-toggle="modal"
                                  data-target="#updateCategoryModal">
                                  <span class="glyphicon glyphicon-search"></span>Update
                          </button>

                          <button type="submit" 
                                  class="btn btn-danger btn-sm"
                                  data-toggle="modal"
                                  data-target="#deleteCategoryModal">
                                  <span class="glyphicon glyphicon-search"></span> Delete
                          </button>
                        </div>
                      </td>
                    </tr>
                    <tr>
                      <th scope="row">2</th>
                      <td>Perfumes</td>
                      <td>Items used to add fragrance to clothes</td>
                       <td>
                        <div class="text-right">
                          <button type="submit" class="btn btn-primary btn-sm"><span class="glyphicon glyphicon-search"></span>Update</button>
                          <button type="submit" class="btn btn-danger btn-sm"> <span class="glyphicon glyphicon-search"></span> Delete</button>
                        </div>
                      </td>
                    </tr>
                    <tr>
                      <th scope="row">3</th>
                      <td>Cosmetics</td>
                      <td>Chemicals applied to the face</td>
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
            <div class="modal fade" id="addCategoryModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Add new categories</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                    <form>
                      <div class="form-group row">
                        <label for="colFormLabel" class="col-sm-3 col-form-label">Category Name:</label>
                        <div class="col-sm-7">
                          <input type="email" class="form-control" id="colFormLabel" placeholder="enter Organization name">
                        </div>
                      </div>

                      <div class="form-group row">
                        <label for="colFormLabel" class="col-sm-3 col-form-label">Description:</label>
                        <div class="col-sm-4">
                          <input type="tel" class="form-control" id="colFormLabel" placeholder="enter phone No.">
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
            <!-- addCategoryModal Modal -->

            <!-- updateCategoryModal Modal -->
            <div class="modal fade" id="updateCategoryModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Update category details</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">

                    <form>
                      <div class="form-group row">
                        <label for="colFormLabel" class="col-sm-3 col-form-label">Category Name:</label>
                        <div class="col-sm-7">
                          <input type="email" class="form-control" id="colFormLabel" placeholder="enter category name">
                        </div>
                      </div>

                      <div class="form-group row">
                        <label for="colFormLabel" class="col-sm-3 col-form-label">Description:</label>
                        <div class="col-sm-4">
                          <input type="tel" class="form-control" id="colFormLabel" placeholder="enter description.">
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
            <!-- updateCategoryModal Modal -->
            

             <!-- deleteCategoryModal Modal -->
            <div class="modal fade" id="deleteCategoryModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
            <!-- deleteCategoryModal Modal -->


            <!-- Product Tab pane -->
           <div class="tab-pane fade" id="product" role="tabpanel" aria-labelledby="ProductTab">

        <div class="tab-content">
          <div class="tab-pane fade show active" id="productPane" role="tabpanel" aria-labelledby="ProductTab">
            
               <table class="table">
                  <thead>
                    <tr>
                      <th scope="col">#</th>
                      <th scope="col">Product Name</th>
                      <th scope="col">Category</th>
                      <th scope="col">Description</th>
                      <th scope="col">Cost</th>
                      <th scope="col">Price</th>
                      <th scope="col">
                        <div class="text-right">
                          <button type="submit" 
                                  class="btn btn-success btn-sm"
                                  data-toggle="modal"
                                  data-target="#addProductModal">
                                  <span class="glyphicon  glyphicon-star" aria-hidden="true""></span>Add
                          </button>
                        </div>
                      </th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <th scope="row">1</th>
                      <td>Gala</td>
                      <td>Snack</td>
                      <td>A beef sausage rapped in dough</td>
                      <td>50</td>
                      <td>40</td>
                      <td>
                        <div class="text-right">
                          <button type="submit" 
                                  class="btn btn-primary btn-sm"
                                  data-toggle="modal"
                                  data-target="#updateProductModal">
                                  <span class="glyphicon glyphicon-search"></span>Update
                          </button>

                          <button type="submit" 
                                  class="btn btn-danger btn-sm"
                                  data-toggle="modal"
                                  data-target="#deleteProductModal">
                                  <span class="glyphicon glyphicon-search"></span> Delete
                          </button>
                        </div>
                      </td>
                    </tr>
                    <tr>
                      <th scope="row">2</th>
                      <td>Fanta</td>
                      <td>Soda</td>
                      <td>A sweet tasting soda</td>
                      <td>150</td>
                      <td>100</td>
                       <td>
                        <div class="text-right">
                          <button type="submit" class="btn btn-primary btn-sm"><span class="glyphicon glyphicon-search"></span>Update</button>
                          <button type="submit" class="btn btn-danger btn-sm"> <span class="glyphicon glyphicon-search"></span> Delete</button>
                        </div>
                      </td>
                    </tr>
                    <tr>
                      <th scope="row">3</th>
                      <td>Bonux</td>
                      <td>Detergent</td>
                      <td>A detergent used for washing clothes</td>
                      <td>700</td>
                      <td>500</td>
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
        <!-- Product Tab pane -->

           <!--addProductModal Modal -->
            <div class="modal fade" id="addProductModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Add new Product</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                   <form>
                     <br>
                    <div class="form-group row">
                      <label for="colFormLabel" class="col-sm-2 col-form-label">Product Name:</label>
                      <div class="col-sm-10">
                        <input type="email" class="form-control" id="colFormLabel" placeholder="enter product name">
                      </div>
                    </div>

                    <div class="form-group row">
                      <label for="colFormLabel" class="col-sm-2 col-form-label">Category:</label>
                      <div class="col-sm-8">
                        <textarea rows="4" cols="50" class="form-control" id="colFormLabel" placeholder="enter category"></textarea>
                      </div>
                    </div>

                    <div class="form-group row">
                      <label for="colFormLabel" class="col-sm-2 col-form-label">Description:</label>
                      <div class="col-sm-5">
                        <input type="tel" class="form-control" id="colFormLabel" placeholder="enter description">
                      </div>
                    </div>

                    <div class="form-group row">
                      <label for="colFormLabel" class="col-sm-2 col-form-label">Price:</label>
                      <div class="col-sm-5">
                        <input type="text" class="form-control" id="colFormLabel" placeholder="enter price.">
                      </div>
                    </div>

                    <div class="form-group row">
                      <label for="colFormLabel" class="col-sm-2 col-form-label">Cost:</label>
                      <div class="col-sm-5">
                        <input type="text" class="form-control" id="colFormLabel" placeholder="enter cost.">
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
            <!-- addProductModal Modal -->


             <!--updateProductModal Modal -->
            <div class="modal fade" id="updateProductModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Update product details</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                   <form>
                     <br>
                    <div class="form-group row">
                      <label for="colFormLabel" class="col-sm-2 col-form-label">Product Name:</label>
                      <div class="col-sm-10">
                        <input type="email" class="form-control" id="colFormLabel" placeholder="enter product name">
                      </div>
                    </div>

                    <div class="form-group row">
                      <label for="colFormLabel" class="col-sm-2 col-form-label">Category:</label>
                      <div class="col-sm-8">
                        <textarea rows="4" cols="50" class="form-control" id="colFormLabel" placeholder="enter branch address"></textarea>
                      </div>
                    </div>

                    <div class="form-group row">
                      <label for="colFormLabel" class="col-sm-2 col-form-label">Description:</label>
                      <div class="col-sm-5">
                        <input type="tel" class="form-control" id="colFormLabel" placeholder="enter LGA of branch">
                      </div>
                    </div>

                    <div class="form-group row">
                      <label for="colFormLabel" class="col-sm-2 col-form-label">Price:</label>
                      <div class="col-sm-5">
                        <input type="text" class="form-control" id="colFormLabel" placeholder="enter state.">
                      </div>
                    </div>

                    <div class="form-group row">
                      <label for="colFormLabel" class="col-sm-2 col-form-label">Cost:</label>
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
            <!-- updateProductModal Modal -->


              <!-- deleteProductModal Modal -->
            <div class="modal fade" id="deleteProductModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
            <!-- deleteCategoryModal Modal -->

            


            <!-- Inventory Tab pane -->
           <div class="tab-pane fade" id="inventory" role="tabpanel" aria-labelledby="inventoryTab">

        <div class="tab-content">
          <div class="tab-pane fade show active" id="inventoryPane" role="tabpanel" aria-labelledby="inventoryTab">
            
               <table class="table">
                  <thead>
                    <tr>
                      <th scope="col">#</th>
                      <th scope="col">Product Name</th>
                      <th scope="col">Description</th>
                      <th scope="col">No. of Units</th>
                      <th scope="col">Qty of Units</th>
                      <th scope="col">Total Qty</th>
                      <th scope="col">Ordered</th>
                      <th scope="col">Reorder Level</th>
                      <th scope="col">
                        <div class="text-right">
                          <button type="submit" 
                                  class="btn btn-success btn-sm"
                                  data-toggle="modal"
                                  data-target="#addInventoryModal">
                                  <span class="glyphicon  glyphicon-star" aria-hidden="true""></span>Add
                          </button>
                        </div>
                      </th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <th scope="row">1</th>
                      <td>Gala</td>
                      <td>Snack</td>
                      <td>10</td>
                      <td>50</td>
                      <td>500</td>
                      <td>0</td>
                      <td>0</td>
                      <td>
                        <div class="text-right">
                          <button type="submit" 
                                  class="btn btn-primary btn-sm"
                                  data-toggle="modal"
                                  data-target="#updateInventoryModal">
                                  <span class="glyphicon glyphicon-search"></span>Update
                          </button>

                          <button type="submit" 
                                  class="btn btn-danger btn-sm"
                                  data-toggle="modal"
                                  data-target="#deleteInventoryModal">
                                  <span class="glyphicon glyphicon-search"></span>Delete
                          </button>
                        </div>
                      </td>
                    </tr>
                    <tr>
                      <th scope="row">2</th>
                      <td>Mary Kay</td>
                      <td>Cosmetics</td>
                      <td>20</td>
                      <td>20</td>
                      <td>400</td>
                      <td>0</td>
                      <td>0</td>
                       <td>
                        <div class="text-right">
                          <button type="submit" class="btn btn-primary btn-sm"><span class="glyphicon glyphicon-search"></span>Update</button>
                          <button type="submit" class="btn btn-danger btn-sm"> <span class="glyphicon glyphicon-search"></span> Delete</button>
                        </div>
                      </td>
                    </tr>
                    <tr>
                      <th scope="row">3</th>
                      <td>Bonux</td>
                      <td>A detergent used for washing clothes</td>
                      <td>5</td>
                      <td>10</td>
                      <td>50</td>
                      <td>0</td>
                      <td>0</td>
                      <td>
                        <div class="text-left">
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
        <!-- Inventory Tab pane -->

           <!--addInventoryModal Modal -->
            <div class="modal fade" id="addInventoryModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Add new Product</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                   <form>
                     <br>
                    <div class="form-group row">
                      <label for="colFormLabel" class="col-sm-2 col-form-label">Product Name:</label>
                      <div class="col-sm-10">
                        <input type="email" class="form-control" id="colFormLabel" placeholder="enter product name">
                      </div>
                    </div>

                    <div class="form-group row">
                      <label for="colFormLabel" class="col-sm-2 col-form-label">Category:</label>
                      <div class="col-sm-8">
                        <textarea rows="4" cols="50" class="form-control" id="colFormLabel" placeholder="enter category"></textarea>
                      </div>
                    </div>

                    <div class="form-group row">
                      <label for="colFormLabel" class="col-sm-2 col-form-label">Description:</label>
                      <div class="col-sm-5">
                        <input type="tel" class="form-control" id="colFormLabel" placeholder="enter description">
                      </div>
                    </div>

                    <div class="form-group row">
                      <label for="colFormLabel" class="col-sm-2 col-form-label">Price:</label>
                      <div class="col-sm-5">
                        <input type="text" class="form-control" id="colFormLabel" placeholder="enter price.">
                      </div>
                    </div>

                    <div class="form-group row">
                      <label for="colFormLabel" class="col-sm-2 col-form-label">Cost:</label>
                      <div class="col-sm-5">
                        <input type="text" class="form-control" id="colFormLabel" placeholder="enter cost.">
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
            <!-- addProductModal Modal -->


             <!--updateProductModal Modal -->
            <div class="modal fade" id="updateProductModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Update product details</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                   <form>
                     <br>
                    <div class="form-group row">
                      <label for="colFormLabel" class="col-sm-2 col-form-label">Product Name:</label>
                      <div class="col-sm-10">
                        <input type="email" class="form-control" id="colFormLabel" placeholder="enter product name">
                      </div>
                    </div>

                    <div class="form-group row">
                      <label for="colFormLabel" class="col-sm-2 col-form-label">Category:</label>
                      <div class="col-sm-8">
                        <textarea rows="4" cols="50" class="form-control" id="colFormLabel" placeholder="enter branch address"></textarea>
                      </div>
                    </div>

                    <div class="form-group row">
                      <label for="colFormLabel" class="col-sm-2 col-form-label">Description:</label>
                      <div class="col-sm-5">
                        <input type="tel" class="form-control" id="colFormLabel" placeholder="enter LGA of branch">
                      </div>
                    </div>

                    <div class="form-group row">
                      <label for="colFormLabel" class="col-sm-2 col-form-label">Price:</label>
                      <div class="col-sm-5">
                        <input type="text" class="form-control" id="colFormLabel" placeholder="enter state.">
                      </div>
                    </div>

                    <div class="form-group row">
                      <label for="colFormLabel" class="col-sm-2 col-form-label">Cost:</label>
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
            <!-- updateProductModal Modal -->


              <!-- deleteProductModal Modal -->
            <div class="modal fade" id="deleteProductModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
            <!-- deleteCategoryModal Modal -->

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

