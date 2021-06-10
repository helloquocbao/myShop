<%-- 
    Document   : Cart
    Created on : Oct 31, 2020, 9:42:21 PM
    Author     : trinh
--%>
<%@page import="model.Users"%>
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
         <%
            Users users = (Users) session.getAttribute("acc");
            if (users == null) {
                response.sendRedirect("/QBShop/login.jsp");
            }
        %>
       <jsp:include page="header.jsp"></jsp:include>
      
         <div class="shopping-cart">
            <div class="px-4 px-lg-0">

                <div class="pb-5">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12 p-5 bg-white rounded shadow-sm mb-5">

                                <!-- Shopping cart table -->
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th scope="col" class="border-0 bg-light">
                                                    <div class="p-2 px-3 text-uppercase">Ngày</div>
                                                </th>
                                                 <th scope="col" class="border-0 bg-light">
                                                    <div class="py-2 text-uppercase">Mã Dơn hàng</div>
                                                </th>
                                                <th scope="col" class="border-0 bg-light">
                                                    <div class="py-2 text-uppercase">Tổng tiền</div>
                                                </th>
                                                <th scope="col" class="border-0 bg-light">
                                                    <div class="py-2 text-uppercase">Địa chỉ</div>
                                                </th>
                                                <th scope="col" class="border-0 bg-light">
                                                    <div class="py-2 text-uppercase">Chi tiết</div>
                                                </th>
                                            </tr>
                                        </thead>
                                       
                                        
                                        <tbody>
                                        
                                        <c:forEach items="${listP}" var="o">
                                                <tr>
                                                   
                                                    <th class="align-middle">
                                                       
                                                              ${o.date}
                                                      
                                                    </th>
                                                 
                                                    <td class="align-middle"><strong></strong>  ${o.billID} </td>
                                                    
                                                    <td class="align-middle">
                                                      ${o.total }
                                                    </td>
                                                     <td class="align-middle">
                                                        ${o.address}
                                                    </td>
                                                     <td class="align-middle"><a href="ShowInfoBill?billID=${o.billID}" class="text-dark">
                                                        <button type="button" class="btn btn-danger">Xem</button>
                                                        </a>
                                                    </td>
                                                       
                                                        
                                                    </td>
                                                </tr> 
                                           </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- End -->
                            </div>
                        </div>

                       
                            
                           
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>                                    
   <jsp:include page="footer.jsp"></jsp:include>
    </body>

</html>
</html>
