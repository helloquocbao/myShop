<%-- 
    Document   : bannerAbout
    Created on : Mar 8, 2021, 2:07:06 PM
    Author     : QuocBao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
     <div class="modal fade bg-white" id="templatemo_search" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="w-100 pt-1 mb-5 text-right">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="" method="get" class="modal-content modal-body border-0 p-0">
                <div class="input-group mb-2">
                    <input type="text" class="form-control" id="inputModalSearch" name="q" placeholder="Search ...">
                    <button type="submit" class="input-group-text bg-success text-light">
                        <i class="fa fa-fw fa-search text-white"></i>
                    </button>
                </div>
            </form>
        </div>
    </div>



    <section class="bg-success py-5">
        <div class="container">
            <div class="row align-items-center py-5">
                <div class="col-md-8 text-white">
                    <h1>Về chúng tôi</h1>
                    <p>
                        Zay shop là cửa hàng thành lập vào năm 2021 thuộc Công ty Cổ phần Quốc Bảo Goup,
                        là một chuỗi hệ thống bán lẻ tại Việt Nam với lĩnh vực kinh doanh chính là bán lẻ các sản phẩm thời trang.
                        
                    </p>
                </div>
                <div class="col-md-4">
                    <img src="img/about-hero.svg" alt="About Hero">
                </div>
            </div>
        </div>
    </section>
    </body>
</html>
