<%-- 
    Document   : manager
    Created on : Apr 11, 2021, 6:24:35 PM
    Author     : QuocBao
--%>

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
        
         <h3 style="padding-top: 2%;padding-left: 2%">Giỏ hàng của bạn</h3>
      
        <div style="display: flex;justify-content: space-between; ">
           
            <div class="load_list_hang" style="box-sizing: border-box;  width: 70%" >           
                <ul>
                    <li >

                        <div style="display:block; margin: 1%; width:80%; background-color: pink;  ">
                            <div class="cart-products__inner" style="display: flex">
                                <div class="cart-products__img">
                                    <a data-view-id="cart_main_product" data-view-index="fbc9d373-9c65-11eb-b962-ea5c4bde5afa" href="/product-p58448882.html?spid=59300677">
                                        <img style="padding:5%" src="https://salt.tikicdn.com/cache/200x200/ts/product/21/38/ab/ac8e85d0d1654f1f299f0a67f4cf9fe8.jpg" alt="Thanh xốp chắn khe cửa đa năng thông minh">
                                    </a>
                                </div>
                                <div class="cart-products__content" style="display: block; width: calc(100% - 60px)">
                                    <div class="cart-products__content--inner"  style="display: flex; justify-content: space-between;">
                                        <div class="cart-products__desc">
                                            <a class="cart-products__name" href="/product-p58448882.html?spid=59300677">Ao thun</a>
                                            <p class="cart-products__badge"></p><p class="cart-products__actions">
                                                <span >Xóa</span>
                                            </p>
                                        </div>
                                        <div class="cart-products__details" style="display: flex">
                                            <div class="cart-products__pricess" >
                                                <p class="cart-products__real-prices" style="">29.500đ</p>
                                                <p class="cart-products__discount-prices">
                                                    <del>130.000đ</del>
                                                    <span class="cart-products__percent-prices">-77%</span>
                                                </p>
                                            </div>
                                            <div class="cart-products__qty"><div class="CartQty__StyledCartQty-o1bx97-0 iaIXXn">
                                                    <span data-view-id="cart_main_quantity.decrease" data-view-index="fbc9d373-9c65-11eb-b962-ea5c4bde5afa" class="qty-decrease qty-disable">-</span>
                                                    <input type="tel" class="qty-input" value="1">
                                                    <span data-view-id="cart_main_quantity.increase" data-view-index="fbc9d373-9c65-11eb-b962-ea5c4bde5afa" class="qty-increase ">+</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li >

                        <div style="display:block; margin: 1%; width:80%; background-color: pink;  ">
                            <div class="cart-products__inner" style="display: flex">
                                <div class="cart-products__img">
                                    <a data-view-id="cart_main_product" data-view-index="fbc9d373-9c65-11eb-b962-ea5c4bde5afa" href="/product-p58448882.html?spid=59300677">
                                        <img style="padding:5%" src="https://salt.tikicdn.com/cache/200x200/ts/product/21/38/ab/ac8e85d0d1654f1f299f0a67f4cf9fe8.jpg" alt="Thanh xốp chắn khe cửa đa năng thông minh">
                                    </a>
                                </div>
                                <div class="cart-products__content" style="display: block; width: calc(100% - 60px)">
                                    <div class="cart-products__content--inner"  style="display: flex; justify-content: space-between;">
                                        <div class="cart-products__desc">
                                            <a class="cart-products__name" href="/product-p58448882.html?spid=59300677">Ao thun</a>
                                            <p class="cart-products__badge"></p><p class="cart-products__actions">
                                                <span >Xóa</span>
                                            </p>
                                        </div>
                                        <div class="cart-products__details" style="display: flex">
                                            <div class="cart-products__pricess" >
                                                <p class="cart-products__real-prices" style="">29.500đ</p>
                                                <p class="cart-products__discount-prices">
                                                    <del>130.000đ</del>
                                                    <span class="cart-products__percent-prices">-77%</span>
                                                </p>
                                            </div>
                                            <div class="cart-products__qty"><div class="CartQty__StyledCartQty-o1bx97-0 iaIXXn">
                                                    <span data-view-id="cart_main_quantity.decrease" data-view-index="fbc9d373-9c65-11eb-b962-ea5c4bde5afa" class="qty-decrease qty-disable">-</span>
                                                    <input type="tel" class="qty-input" value="1">
                                                    <span data-view-id="cart_main_quantity.increase" data-view-index="fbc9d373-9c65-11eb-b962-ea5c4bde5afa" class="qty-increase ">+</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                           <div style="display:block; margin: 1%; width:80%;background-color: pink;">
                            <div class="cart-products__inner" style="display: flex">
                                <div class="cart-products__img">
                                    <a data-view-id="cart_main_product" data-view-index="fbc9d373-9c65-11eb-b962-ea5c4bde5afa" href="/product-p58448882.html?spid=59300677">
                                        <img style="padding:5%"  src="https://salt.tikicdn.com/cache/200x200/ts/product/21/38/ab/ac8e85d0d1654f1f299f0a67f4cf9fe8.jpg" alt="Thanh xốp chắn khe cửa đa năng thông minh">
                                    </a>
                                </div>
                                <div class="cart-products__content" style="display: block; width: calc(100% - 60px)">
                                    <div class="cart-products__content--inner"  style="display: flex; justify-content: space-between;">
                                        <div class="cart-products__desc">
                                            <a class="cart-products__name" href="/product-p58448882.html?spid=59300677">Ao thun</a>
                                            <p class="cart-products__badge"></p><p class="cart-products__actions">
                                                <span >Xóa</span>
                                            </p>
                                        </div>
                                        <div class="cart-products__details" style="display: flex">
                                            <div class="cart-products__pricess" >
                                                <p class="cart-products__real-prices" style="">29.500đ</p>
                                                <p class="cart-products__discount-prices">
                                                    <del>130.000đ</del>
                                                    <span class="cart-products__percent-prices">-77%</span>
                                                </p>
                                            </div>
                                            <div class="cart-products__qty"><div class="CartQty__StyledCartQty-o1bx97-0 iaIXXn">
                                                    <span data-view-id="cart_main_quantity.decrease" data-view-index="fbc9d373-9c65-11eb-b962-ea5c4bde5afa" class="qty-decrease qty-disable">-</span>
                                                    <input type="tel" class="qty-input" value="1">
                                                    <span data-view-id="cart_main_quantity.increase" data-view-index="fbc9d373-9c65-11eb-b962-ea5c4bde5afa" class="qty-increase ">+</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>

            <div class="tinh_tien" style="width:30%; background-color: buttonface; margin-right: 2%;height: 600px; padding: 3%">
                <div class="cart-total-prices">
                    <div class="cart-total-prices__inner">
                        <div class="styles__StyledShippingAddress-sc-1sjj51k-0 hCYeOT">
                            <p class="heading">
                                <span class="text">Địa chỉ nhận hàng</span>
                                <a data-view-id="cart_shipping_location.change" class="link" href="/checkout/shipping">Thay đổi</a>
                            </p>
                            <p class="title">
                                <b class="name">Quốc Bảo Lê Hồ</b>
                                <b class="phone">0917982707</b>
                            </p>
                            <p class="address">Tạp hóa Quỳnh Anh 84 A Phước Thành, P7, Đà Lạt,, Phường 7, Thành phố Đà Lạt, Lâm Đồng</p>
                        </div>
                        <div class="styles__StyledCartCoupon-sc-166rx9n-0 fmbmEN">
                            <div class="title-usage">
                                <p class="coupon-title">Tiki khuyến mãi</p>
                                <p class="max-usage">Có thể chọn 2
                                    <img class="max-usage__info" src="https://frontend.tikicdn.com/_desktop-next/static/img/mycoupon/icons-info-gray.svg" alt="info">
                                </p>
                            </div>
                            <div class="eligible_coupon_list">

                            </div>
                            <div data-view-id="cart_platform.coupon_view.all" class="show-more">
                                <img src="https://frontend.tikicdn.com/_desktop-next/static/img/mycoupon/coupon_icon.svg">
                                <span>Chọn hoặc nhập Khuyến mãi </span></div></div><div class="CartPrices__StyledCartPrices-yhdjkc-0 ENgjL">
                            <div class="prices"><ul class="prices__items"><li class="prices__item"><span class="prices__text">Tạm tính</span>
                                        <span class="prices__value">29.500đ</span>
                                    </li>
                                </ul>
                                <p class="prices__total">
                                    <span class="prices__text">Thành tiền</span>
                                    <span class="prices__value prices__value--final">29.500đ
                                        <i>(Đã bao gồm VAT nếu có)</i>
                                    </span>
                                </p>
                            </div>
                        </div>
                        <button type="button" class="cart__submit">Tiến hành đặt hàng</button>
                    </div>
                </div>
            </div>
        </div>


        
        <jsp:include page="footerShop.jsp"></jsp:include>
    </body>
</html>
