<%-- 
    Document   : Index
    Created on : Mar 8, 2021, 12:09:17 AM
    Author     : QuocBao
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <nav class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block" id="templatemo_nav_top">
        <div class="container text-light">
            <div class="w-100 d-flex justify-content-between">
                <div>
                    <i class="fa fa-envelope mx-2"></i>
                    <a class="navbar-sm-brand text-light text-decoration-none" href="mailto:info@company.com">lehoquocbao9@gmail.com</a>
                    <i class="fa fa-phone mx-2"></i>
                    <a class="navbar-sm-brand text-light text-decoration-none" href="tel:010-020-0340">0917000000</a>
                </div>
                <div>
                    <a class="text-light" href="https://fb.com" target="_blank" rel="sponsored"><i class="fab fa-facebook-f fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://www.instagram.com/" target="_blank"><i class="fab fa-instagram fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://twitter.com/" target="_blank"><i class="fab fa-twitter fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://www.linkedin.com/" target="_blank"><i class="fab fa-linkedin fa-sm fa-fw"></i></a>
                </div>
            </div>
        </div>
    </nav>
        
        <jsp:include page="header.jsp"></jsp:include>
        <jsp:include page="banner.jsp"></jsp:include>
        
   
        
        <section class="container py-5">
        <div class="row text-center pt-3">
            <div class="col-lg-6 m-auto">
                <h1 class="h1">Danh m???c y??u th??ch nh???t</h1>
                <p>
                    ???????c l???a ch???n h??ng ?????u t??? ng?????i mua.
                    N??i m?? c???p nh???p xu h?????ng nhanh nh???t.
                </p>
            </div>
        </div>
        <div class="row">
            <div class="col-12 col-md-4 p-5 mt-3">
                <a href="category?category=12"><img src="./img/category_img_01.jpg" class="rounded-circle img-fluid border"></a>
                <h5 class="text-center mt-3 mb-3">?????ng h???</h5>
                <p class="text-center"><a class="btn btn-success" href="category?category=12">Go Shop</a></p>
            </div>
            <div class="col-12 col-md-4 p-5 mt-3">
                <a href="category?category=9"><img src="./img/category_img_02.jpg" class="rounded-circle img-fluid border"></a>
                <h2 class="h5 text-center mt-3 mb-3">Gi??y</h2>
                <p class="text-center"><a class="btn btn-success" href="category?category=9">Go Shop</a></p>
            </div>
            <div class="col-12 col-md-4 p-5 mt-3">
                <a href="category?category=3"><img src="./img/category_img_03.jpg" class="rounded-circle img-fluid border"></a>
                <h2 class="h5 text-center mt-3 mb-3">K??nh</h2>
                <p class="text-center"><a class="btn btn-success" href="category?category=3" >Go Shop</a></p>
            </div>
        </div>
    </section>
    <!-- End Categories of The Month -->

    <!-- Start Featured Product -->
    <section class="bg-light">
        <div class="container py-5">
            <div class="row text-center py-3">
                <div class="col-lg-6 m-auto">
                    <h1 class="h1">S???n ph???m m???i nh???t</h1>
                    <p>
                        C???p nh???t nh???ng s???n ph???m c???a Zay Shop v???i thi???t k??? ??a d???ng , 
                        ki???u d??ng ?????p m???t, ch???t l?????ng n???i b???t thu???c c??c d??ng gi??y c??ng s???,
                        th??? thao, thi???t k???, gi??p ??a d???ng s??? l???a ch???n cho kh??ch h??ng.
                    </p>
                </div>
            </div>
            <div class="row">
            <c:forEach items="${listP}" var="o">
                <div class="col-12 col-md-4 mb-4">
                    <div class="card h-100">
                        <a href="shop-single.html">
                            <img src="${o.productImage}" class="card-img-top" alt="...">
                        </a>
                        <div class="card-body">
                            <ul class="list-unstyled d-flex justify-content-between">
                                <li>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-muted fa fa-star"></i>
                                </li>
                                <li class="text-muted text-right">${o.productPrice}</li>
                            </ul>
                            <a href="shop-single.html" class="h2 text-decoration-none text-dark">${o.productName}</a>
                            <p class="card-text">
                                ${o.productDescription}
                            </p>
                           
                        </div>
                    </div>
                </div>
              </c:forEach> 
            </div>
        </div>
    </section>
    
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
