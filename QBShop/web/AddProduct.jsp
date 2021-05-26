<%-- 
    Document   : edt
    Created on : Apr 26, 2021, 2:10:09 PM
    Author     : QuocBao
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

    </head>
    <body>


        <div class="modal-dialog">

            <div class="modal-content">
                <h4 class="modal-title">Thêm sản phẩm</h4>
                
                <form method="post" action="UploadServlet" enctype="multipart/form-data">
                    Chọn ảnh cần đưa lên Web
                    <input type="file" name="uploadFile" />
                    <br/><br/>
                    <input type="submit" value="Upload" />
                     <img style="width: 160px; height: 200px" src="${msg}"/>
                </form>
               

                <form action="add" method="post">
                    <div class="modal-header">						

                      
                    </div>
                    <div class="modal-body">					
                        <div class="form-group">
                            <label>Name</label>
                            <input name="name" type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>URL ảnh</label>
                            <input type="text" value="${message}" class="form-control" name="image" />
                        </div>

                        <div class="form-group">
                            <label>Price</label>
                            <input name="price" type="text" class="form-control" required>
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
                        <a href="listProduct" class="btn btn-success"> Hủy</a>
                       
                        <input type="submit" class="btn btn-success" value="Thêm">
                    </div>
                </form>

            </div>
        </div>

    </body>
</html>
