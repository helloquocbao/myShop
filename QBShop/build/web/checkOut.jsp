<%-- 
    Document   : login
    Created on : Mar 26, 2021, 12:24:49 PM
    Author     : QuocBao
--%>

<%@page import="model.Users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Zay shop</title>

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

            <div class="container" style="height: 500px; margin-top: 40px ">
                <div class="account" >
                    <h2 class="account-in">Lựa chọn phương thức thanh toán</h2>
                    <form action="CheckOutControl"  method="POST">
                        <div>

                            <div class="bg-light rounded-pill px-4 py-3 e font-weight-bold" style="text-align: center; width: 700px"> <h5>Thông tin nhận hàng</h5></div>
                            <div class="p-4">
                                <div class="input-group mb-4 border rounded-pill p-2" style="width: 700px">
                                    <input type="text" name="address" placeholder="Nhập địa chỉ" aria-describedby="button-addon3" class="form-control border-0">

                                </div>
                                <div class="input-group mb-4 border rounded-pill p-2"  style="width: 270px">
                                    <input type="number" name="number"  maxlength="10"  placeholder="Số điện thoại nhận hàng" aria-describedby="button-addon3" class="form-control border-0">

                                </div>
                                <div style="margin-top: 40px">
                                    <span>Loại hình</span>
                                    <select name="payment">
                                       
                                        <option value="Live"> Trả tiền khi nhận hàng</option>
                                    </select>
                                </div> 
                                <input style="margin-top: 40px" class="btn btn-success" type="submit" value="Hoàn tất"> 

                            </div>
                        </div>
                    </form>
                </div>
            </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
