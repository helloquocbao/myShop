<%-- 
    Document   : header
    Created on : Mar 8, 2021, 12:06:10 AM
    Author     : QuocBao
--%>


<%@page import="model.Users"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import= "model.Cart"%>
<%@page import= "model.Item"%>
<%@page import= "java.util.Map"%>

<%
    Cart cart = (Cart) session.getAttribute("cart");
    if(cart == null){
        cart = new Cart();
        session.setAttribute("cart", cart);
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
    </head>
    <body>
        
        <nav class="navbar navbar-expand-lg navbar-light shadow">
        <div class="container d-flex justify-content-between align-items-center">

            <a class="navbar-brand text-success logo h1 align-self-center" href="Index">
                Zay
           </a>

            <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
                <div class="flex-fill">
                    <ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="Index">Trang chủ</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="about.jsp">Thông tin</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="shop">Shop</a>

                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="contact.jsp">Liên hệ</a>
                        </li>
                       <c:if  test="${sessionScope.acc.isAdmin  == 1}">
                        <li class="nav-item">
                        <a class="nav-link" href="listProduct">Quản lý</a>
                        </li>
                        </c:if>
                        <c:if  test="${sessionScope.acc.isAdmin  == 0}">
                        <li class="nav-item">
                        <a class="nav-link" href="loadListMyBill?uid=${sessionScope.acc.userEmail}">Đơn Hàng</a>
                        </li>
                        </c:if>
                    </ul>
                </div>
                <div class="navbar align-self-center d-flex">                
                    <a class="nav-icon position-relative text-decoration-none" href="Cart.jsp">
                        <i class="fa fa-fw fa-cart-arrow-down text-dark mr-1"></i>
                       <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark"><%=cart.countItem()%></span>

                    </a>
                    <c:if test="${sessionScope.acc  == null}">
                    <a class="nav-icon position-relative text-decoration-none" href="login.jsp">
                        <i class="fa fa-fw fa-user text-dark mr-3"></i>
                        <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark"> login</span>
                    </a>
                    </c:if>
                    
                    <c:if  test="${sessionScope.acc  != null}">                        
                        <a class="nav-icon position-relative text-decoration-none" href="logout" >               
                            <i class="fas fa-sign-out-alt text-dark mr-3"></i>
                        </a>
                        <a class="nav-icon position-relative text-decoration-none" href="InfoAcc">
                            <i class="fa fa-fw fa-user text-dark mr-3"></i>
                            <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">${sessionScope.acc.fullName}</span>
                        </a>
                    </c:if>
                           
                </div>
            </div>

        </div>
    </nav>
    </body>
</html>
