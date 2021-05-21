 <%@page import="java.util.ArrayList"%>
<%@page import="model.Product"%>
<%@page import="dao.ProductDAO"%>
<%-- 
    Document   : shop
    Created on : Mar 8, 2021, 12:30:50 AM
    Author     : QuocBao
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="model.Gender"%>
<%@page import="dao.GenderDAO"%>            
<%@page import="model.Category"%>
<%@page import="dao.CategoryDAO"%> 
<%@page import= "model.Cart"%>




<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Zay Shop</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="apple-touch-icon" href="img/apple-icon.png">
        <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/templatemo.css">
        <link rel="stylesheet" href="css/custom.css">

        <!-- Load fonts style after rendering the layout styles -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
        <link rel="stylesheet" href="css/fontawesome.min.css">
    </head>
    <body>
        <%
            GenderDAO genderDAO = new GenderDAO();
        %>


        <%
            CategoryDAO categoryDAO = new CategoryDAO();
        %>
       
        <%
            ProductDAO productDAO = new ProductDAO();
            long categoryID = 0;
            if (request.getParameter("categoryID") != null) {
                categoryID = (long) Long.parseLong(request.getParameter("categoryID"));
            }
            
            Cart cart = (Cart) session.getAttribute("cart");
            if (cart == null) {
                cart = new Cart();
                session.setAttribute("cart", cart);
            }
            
          %>
       
            
            


        <nav class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block" id="templatemo_nav_top">
            <div class="container text-light">
                <div class="w-100 d-flex justify-content-between">
                    <div>
                        <i class="fa fa-envelope mx-2"></i>
                        <a class="navbar-sm-brand text-light text-decoration-none" href="mailto:info@company.com">info@company.com</a>
                        <i class="fa fa-phone mx-2"></i>
                        <a class="navbar-sm-brand text-light text-decoration-none" href="tel:010-020-0340">010-020-0340</a>
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
        <jsp:include page="header.jsp"></jsp:include>
            
        <div class="align-content-end" style="padding-right: 115px; padding-top: 20px" role="document" >
                      <form action="search" method="post" class="modal-content modal-body border-0 p-0" style="width: 300px;height: 10px; float: right ">
                        <div class="input-group mb-2">
                            <input type="text" class="form-control" id="inputModalSearch" name="txt" placeholder="Search ...">
                            <button type="submit" class="input-group-text bg-success text-light">
                                <i class="fa fa-fw fa-search text-white"></i>
                            </button>
                        </div>
                    </form>
                </div>
            



            <!-- Start Content -->
            <div class="container py-5">
                <div class="row">

                    <div class="col-lg-3">
                        <h1 class="h2 pb-4">Danh mục</h1>
                        <ul class="list-unstyled templatemo-accordion">
                            <li class="pb-3">
                                <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="#">
                                    Giới tính
                                    <i class="fa fa-fw fa-chevron-circle-down mt-1"></i>
                                </a>
                                <ul class="collapse show list-unstyled pl-3">
                                <c:forEach items="${listG}" var="o">
                                    <li><a class="text-decoration-none" href="gender?gender=${o.genderID}">${o.genderName}</a></li>
                                </c:forEach>
                                    
                            </ul>
                        </li>
                       
                        </li>
                        <li class="pb-3">
                            <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="#">
                                Sản phẩm
                                <i class="pull-right fa fa-fw fa-chevron-circle-down mt-1"></i>
                            </a>
                            <ul id="collapseThree" class="collapse list-unstyled pl-3">
                                <c:forEach items="${listC}" var="o">
                                    
                                    <li><a class="text-decoration-none" href="category?category=${o.categoryID}&pages=1">${o.categoryName}</a></li>
                                </c:forEach>    
                            </ul>
                        </li>
                    </ul>
                </div>

                <div class="col-lg-9">
                    <div class="row">
                        <div class="col-md-6">
                            <ul class="list-inline shop-top-menu pb-3 pt-1">
                                <li class="list-inline-item">
                                    <a class="h3 text-dark text-decoration-none mr-3" href="shop">Tất cả</a>

                                </li>
                                <li class="list-inline-item">
                                    <a class="h3 text-dark text-decoration-none mr-3" href="gender?gender=1">Nam</a>
                                </li>
                                <li class="list-inline-item">
                                    <a class="h3 text-dark text-decoration-none" href="gender?gender=2">Nữ</a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-md-6 pb-4">
                            <div class="d-flex">
                                <select class="form-control">
                                    <option>Bán chạy nhất</option>
                                    
                                    <option>Giá thấp tới cao</option>
                                    <option>Giá cao tới thấp</option>
                                </select>
                            </div>
                        </div>
                    </div>

                    
                    
                    
                    
                    
                    <div class="row">
                        <c:forEach items="${listP}" var="o">
                            <div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <img class="card-img rounded-0 img-fluid" src="${o.productImage}">
                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                    <ul class="list-unstyled">
                                        <li><a class="btn btn-success text-white mt-2" href="shop-single?product=${o.productID}"><i class="far fa-eye"></i></a></li>
                                        <li><a class="btn btn-success text-white mt-2" href="cart?command=plus&productID=${o.productID}"><i class="fas fa-cart-plus"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="card-body">
                                <a href="shop-single?product=${o.productID}" class="h3 text-decoration-none">${o.productName}</a>
                                <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                    <li>M/L/X/XL</li>
                                    <li class="pt-2">
                                        <span class="product-color-dot color-dot-red float-left rounded-circle ml-1"></span>
                                        <span class="product-color-dot color-dot-blue float-left rounded-circle ml-1"></span>
                                        <span class="product-color-dot color-dot-black float-left rounded-circle ml-1"></span>
                                        <span class="product-color-dot color-dot-light float-left rounded-circle ml-1"></span>
                                        <span class="product-color-dot color-dot-green float-left rounded-circle ml-1"></span>
                                    </li>
                                </ul>
                                <ul class="list-unstyled d-flex justify-content-center mb-1">
                                    <li>
                                        <i class="text-warning fa fa-star"></i>
                                        <i class="text-warning fa fa-star"></i>
                                        <i class="text-warning fa fa-star"></i>
                                        <i class="text-muted fa fa-star"></i>
                                        <i class="text-muted fa fa-star"></i>
                                    </li>
                                </ul>
                                <p class="text-center mb-0">${o.productPrice} VND</p>
                            </div>
                        </div> 
                    </div>
                            
                        </c:forEach>          
                                                         
                        
                    </div>

                    <div div="row">
                        <ul class="pagination pagination-lg justify-content-end">
                            
                                 <c:if test="${tag > 1}">
                             <a class="page-link  rounded-0 mr-3 shadow-sm border-top-0 border-left-0" href="shop?index=${tag - 1}">Trước</a>
                                 </c:if>
                              <c:forEach begin="1" end="${endP}" var="i">
                            <li class="page-item">
                                <a class="page-link ${tag == i ? "active":""} rounded-0 mr-3 shadow-sm border-top-0 border-left-0" href="shop?index=${i}" >${i}</a>
                            </li>
                            </c:forEach>
                        <c:if test="${tag < endP}">
                        <a class="page-link  rounded-0 mr-3 shadow-sm border-top-0 border-left-0" href="shop?index=${tag + 1}">Sau</a>   
                        </c:if>
                        </ul>
                    </div>
                </div>

            </div>
        </div>
        <!-- End Content -->

        <!-- Start Brands -->
        <section class="bg-light py-5">
            <div class="container my-4">
                <div class="row text-center py-3">
                    <div class="col-lg-6 m-auto">
                        <h1 class="h1">Các thương hiệu</h1>
                    
                    </div>
                    <div class="col-lg-9 m-auto tempaltemo-carousel">
                        <div class="row d-flex flex-row">
                            <!--Controls-->
                            <div class="col-1 align-self-center">
                                <a class="h1" href="#multi-item-example" role="button" data-bs-slide="prev">
                                    <i class="text-light fas fa-chevron-left"></i>
                                </a>
                            </div>
                            <!--End Controls-->

                            <!--Carousel Wrapper-->
                            <div class="col">
                                <div class="carousel slide carousel-multi-item pt-2 pt-md-0" id="multi-item-example" data-bs-ride="carousel">
                                    <!--Slides-->
                                    <div class="carousel-inner product-links-wap" role="listbox">

                                        <!--First slide-->
                                        <div class="carousel-item active">
                                            <div class="row">
                                                <div class="col-3 p-md-5">
                                                    <a href="#"><img class="img-fluid brand-img " src="img/brand_01.png" alt="Brand Logo"></a>
                                                </div>
                                                <div class="col-3 p-md-5">
                                                    <a href="#"><img class="img-fluid brand-img " src="img/brand_02.png" alt="Brand Logo"></a>
                                                </div>
                                                <div class="col-3 p-md-5">
                                                    <a href="#"><img class="img-fluid brand-img " src="img/brand_03.png" alt="Brand Logo"></a>
                                                </div>
                                                <div class="col-3 p-md-5">
                                                    <a href="#"><img class="img-fluid brand-img " src="img/brand_04.png" alt="Brand Logo"></a>
                                                </div>
                                            </div>
                                        </div>
                                        <!--End First slide-->

                                        <!--Second slide-->
                                        <div class="carousel-item">
                                            <div class="row">
                                                <div class="col-3 p-md-5">
                                                    <a href="#"><img class="img-fluid brand-img" src="img/brand_01.png" alt="Brand Logo"></a>
                                                </div>
                                                <div class="col-3 p-md-5">
                                                    <a href="#"><img class="img-fluid brand-img" src="img/brand_02.png" alt="Brand Logo"></a>
                                                </div>
                                                <div class="col-3 p-md-5">
                                                    <a href="#"><img class="img-fluid brand-img" src="img/brand_03.png" alt="Brand Logo"></a>
                                                </div>
                                                <div class="col-3 p-md-5">
                                                    <a href="#"><img class="img-fluid brand-img" src="img/brand_04.png" alt="Brand Logo"></a>
                                                </div>
                                            </div>
                                        </div>
                                        <!--End Second slide-->

                                        <!--Third slide-->
                                        <div class="carousel-item">
                                            <div class="row">
                                                <div class="col-3 p-md-5">
                                                    <a href="#"><img class="img-fluid brand-img" src="img/brand_01.png" alt="Brand Logo"></a>
                                                </div>
                                                <div class="col-3 p-md-5">
                                                    <a href="#"><img class="img-fluid brand-img" src="img/brand_02.png" alt="Brand Logo"></a>
                                                </div>
                                                <div class="col-3 p-md-5">
                                                    <a href="#"><img class="img-fluid brand-img" src="img/brand_03.png" alt="Brand Logo"></a>
                                                </div>
                                                <div class="col-3 p-md-5">
                                                    <a href="#"><img class="img-fluid brand-img" src="img/brand_04.png" alt="Brand Logo"></a>
                                                </div>
                                            </div>
                                        </div>
                                        <!--End Third slide-->

                                    </div>
                                    <!--End Slides-->
                                </div>
                            </div>
                            <!--End Carousel Wrapper-->

                          
                            <!--End Controls-->
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--End Brands-->

        <jsp:include page="footer.jsp"></jsp:include>
        <script src="js/jquery-1.11.0.min.js"></script>
        <script src="js/jquery-migrate-1.2.1.min.js"></script>
        <script src="js/bootstrap.bundle.min.js"></script>
        <script src="js/templatemo.js"></script>
        <script src="js/custom.js"></script>
    </body>
</html>
