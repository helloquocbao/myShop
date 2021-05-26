<%-- 
    Document   : ManagerProduct
    Created on : Dec 28, 2020, 5:19:02 PM
    Author     : trinh
--%>

<%@page import="model.Users"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Zay | Quản lý</title>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="apple-touch-icon" href="img/apple-icon.png">
        <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/templatemo.css">
        <link rel="stylesheet" href="css/custom.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css " >
        <!-- Load fonts style after rendering the layout styles -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
        <link rel="stylesheet" href="css/fontawesome.min.css">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

        <link href="css/manager.css" rel="stylesheet" type="text/css"/>
        <style>
            img{
                width: 200px;
                height: 120px;
            }
        </style>
    </head>
    <body>
        <%
            Users users = (Users) session.getAttribute("acc");
            if (users == null) {
                response.sendRedirect("/QBShop/login.jsp");
            }
        %>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <nav class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block" id="templatemo_nav_top">
            <div class="container text-light">
                <div class="w-100 d-flex justify-content-between">
                    <div>
                        <i class="fa fa-envelope mx-2"></i>
                        <a class="navbar-sm-brand text-light text-decoration-none" href="mailto:lehoquocbao9@zay.com">lehoquocbao9@zay.com</a>
                        <i class="fa fa-phone mx-2"></i>
                        <a class="navbar-sm-brand text-light text-decoration-none" href="tel:0917982707">0917982707</a>
                    </div>
                    <div>
                        <a class="text-light" href="https://fb.com/templatemo" target="_blank" rel="sponsored"><i class="fab fa-facebook-f fa-sm fa-fw me-2"></i></a>
                        <a class="text-light" href="https://www.instagram.com/" target="_blank"><i class="fab fa-instagram fa-sm fa-fw me-2"></i></a>
                        <a class="text-light" href="https://twitter.com/" target="_blank"><i class="fab fa-twitter fa-sm fa-fw me-2"></i></a>
                        <a class="text-light" href="https://www.linkedin.com/" target="_blank"><i class="fab fa-linkedin fa-sm fa-fw"></i></a>
                    </div>
                </div>
            </div>
        </nav>



        <nav class="navbar navbar-expand-lg navbar-light shadow">


            <div class="container d-flex">

                <a class="navbar-brand text-success logo h1 align-self-center" href="Index.jsp">
                    Zay
                </a>




                <div class="" id="templatemo_main_nav">
                    <ul class="nav navbar-nav">
                        <li class="nav-item" style="margin-left: 1px ">
                            <a  class="nav-link" href="Index">Trang chủ</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="shop">Shop</a>

                        </li>

                        <c:if  test="${sessionScope.acc.isAdmin  == 1}">
                            <li class="nav-item">
                                <a class="nav-link" href="listProduct">Quản lý</a>
                            </li>
                        </c:if>

                        <c:if test="${sessionScope.acc  == null}">

                            <li class="nav-item">                     
                                <a class="nav-icon position-relative text-decoration-none" href="login.jsp">
                                    <i class="fa fa-fw fa-user text-dark mr-3"></i>
                                    <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">abc</span>
                                </a>
                            </li >
                        </c:if>
                        <c:if  test="${sessionScope.acc  != null}">  
                            <li class="nav-item" style="display:flex">

                                <a class="nav-icon position-relative text-decoration-none" href="account">
                                    <i class="fa fa-fw fa-user text-dark mr-3"></i>
                                    <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">${sessionScope.acc.fullName}</span>
                                </a>

                                <a class="nav-icon position-relative text-decoration-none" href="logout">               
                                    <i class="fas fa-sign-out-alt text-dark mr-3"></i>
                                </a>
                            </li>
                        </c:if>                       
                    </ul>
                </div>
            </div>


        </nav>
        <p style=" text-align: center; padding-top: 20px"></p>

        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6" style="height: 70px">
                            <h2>Quản lý
                                <a style=" padding-left: 20px; padding-right: 20px"  class=" text-white mt-2" href="listProduct"> Sản phẩm</a>
                                <a style="  padding-right: 20px" class=" text-white mt-2" href="managerAccount"> Tài khoản</a>
                                <a  class=" text-white mt-2" href="managerOder"> Đơn hàng</a>
                               <form action="SearchMN" method="post" class="modal-content modal-body border-0 p-0" style="width: 300px;height: 10px; margin-top: 10px; display: flex">
                                   <div  style="display: flex; width: 400px">
                            <input type="text" class="form-control" id="inputModalSearch" name="txt" placeholder="Search ...">
                            <button type="submit" class="input-group-text bg-success text-light">
                                <i class="fa fa-fw fa-search text-white"></i>
                            </button>
                        </div>
                    </form>
                            </h2>
                            
                        </div>

                        <div class="col-sm-6">
                            <a href="#addEmployeeModal"  class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Thêm sản phẩm</span></a>
                            <a href="#deleteEmployeeModal" class="btn btn-danger" data-toggle="modal"><i class="material-icons">&#xE15C;</i> <span>Xóa</span></a>						
                        </div>
                    </div>
                </div>
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>
                                <span class="custom-checkbox">
                                    <input type="checkbox" id="selectAll">
                                    <label for="selectAll"></label>
                                </span>
                            </th>
                            <th>ID</th>
                            <th>Tên</th>
                            <th>Ảnh</th>
                            <th>Mô tả</th>
                            <th>Giá</th>     
                            <th>Thực thi</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${listP}" var="o">
                            <tr>
                                <td>
                                    <span class="custom-checkbox">
                                        <input type="checkbox" id="checkbox1" name="options[]" value="1">
                                        <label for="checkbox1"></label>
                                    </span>
                                </td>
                                <td>${o.productID}</td>
                                <td>${o.productName}</td>
                                <td>
                                    <img style="height:200px" src="${o.productImage}">
                                </td>
                                <td>${o.productDescription}  
                                </td>
                                <td>${o.productPrice} VNĐ</td>
                                <td>
                                    <a href="loadProduct?pid=${o.productID}"  class="edit" ><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                    <a href="delete?pid=${o.productID}" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <div class="clearfix">
                    <div class="hint-text">Hiển thị <b>6</b> trong số <b>${count}</b> sản phẩm</div>
                    <ul class="pagination">
                        <c:if test="${tag > 1}">
                            <li class="page-item "><a href="listProduct?index=${tag - 1}">Trước</a></li>
                            </c:if>
                            <c:forEach begin="1" end="${endP}" var="i">

                            <li class="page-item ${tag == i ? "active":""}"><a href="listProduct?index=${i}" class="page-link">${i}</a></li>

                        </c:forEach>
                        <c:if test="${tag < endP}">
                            <li class="page-item"><a href="listProduct?index=${tag + 1}" class="page-link">Tiếp theo</a></li>
                            </c:if>
                    </ul>
                </div>
            </div>
            <a href="#"><button type="button" class="btn btn-primary">Trở lên trên</button>

        </div>
        <!-- Edit Modal HTML -->
        <div id="addEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="add" method="post">
                        <div class="modal-header">						
                            <h4 class="modal-title">Thêm sản phẩm</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <div class="form-group">
                                <label>Name</label>
                                <input name="name" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Image</label>
                                <input name="image" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Price</label>
                                <input name="price" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Title</label>
                                <textarea name="title" class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label>Description</label>
                                <textarea name="description" class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label>Category</label>
                                <select name="category" class="form-select" aria-label="Default select example">
                                    <c:forEach items="${listC}" var="o">
                                        <option value="${o.categoryID}">${o.categoryName}</option>
                                    </c:forEach>
                                </select>
                                <label>Giới tính</label>
                                <select name="gender" class="form-select" aria-label="Default select example">
                                    <c:forEach items="${listG}" var="o">
                                        <option value="${o.genderID}">${o.genderName}</option>
                                    </c:forEach>
                                </select>
                            </div>

                        </div>
                        <div class="modal-footer">

                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-success" value="Add">
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <!-- Delete Modal HTML -->
        <div id="deleteEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form>
                        <div class="modal-header">						
                            <h4 class="modal-title">Delete Product</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <p>Bạn có muốn xóa toàn bộ thông tin sản phẩm được chọn</p>
                            <p class="text-warning"><small>Đây là một hành động đáng suy nghĩ.</small></p>
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-danger" value="Delete">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </a>

    <script src="js/manager.js" type="text/javascript"></script>
</body>
</html>