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
                            <a class="nav-link" href="Index">Trang chủ</a>
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
                      
                        <a class="nav-icon position-relative text-decoration-none" href="InfoAcc">
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
                        <div class="col-sm-6">
                           <h2>Quản lý
                               <a style=" padding-left: 20px; padding-right: 20px"  class=" text-white mt-2" href="listProduct"> Sản phẩm</a>
                               <a style="  padding-right: 20px" class=" text-white mt-2" href="managerAccount"> Tài khoản</a>
                               <a  class=" text-white mt-2" href="managerOder"> Đơn hàng</a>
                           </h2>
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
                            <th>ID Bill</th>
                            <th>Email người đặt</th>
                            <th>Tổng tiền</th>                            
                            <th>Địa chỉ</th>
                            <th>ngày đặt</th>
                            <th>SĐT nhận hàng</th>
                             <th>Xem</th>
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
                                <td>${o.billID}</td>
                                <td>${o.email}</td>
                                <td>${o.total}</td>
                               
                                <td>${o.address}</td><!-- comment -->
                                
                                <td>${o.date}</td>
                                 <td>${o.number}</td>
                                </td>
                                
                                  <td>
                                    <a href="LoadBill?billID=${o.billID}"  class="edit" ><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                    
                                </td>   
                              
                              
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                
            <a href="#"><button type="button" class="btn btn-primary">Trở lên trên</button>

        </div>
       
      
    </a>
    
    <script src="js/manager.js" type="text/javascript"></script>
</body>
</html>