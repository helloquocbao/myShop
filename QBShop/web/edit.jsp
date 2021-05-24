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
        <title>Edit</title>

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
                <form action="edit" method="post">

                    <div class="modal-header">						
                        <h4 class="modal-title">Chỉnh sửa sản phẩm</h4>                       
                    </div>

                    <div class="modal-body">	
                        <div class="form-group">
                            <label>ID sản phẩm</label>
                            <input value="${p.productID}" name="id" type="text" class="form-control" readonly required>
                        </div>
                        <div class="form-group">
                            <label>Name</label>
                            <input value="${p.productName}" name="name" type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Image</label>
                            <input value="${p.productImage}" name="image" type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Price</label>
                            <input value="${p.productPrice}" name="price" type="text" class="form-control" required>
                        </div>

                        <div class="form-group">
                            <label>Description</label>
                            <textarea name="description" class="form-control" required> ${p.productDescription}</textarea>
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
                                    <option value="${o.genderID}">${o.genderName} </option>
                                </c:forEach>

                            </select>   
                            <div class="modal-footer">
                                    <a href="listProduct"> <input type="button" class="btn btn-default" data-dismiss="modal" value="Hủy"></a> 
                                   
                                    <input type="submit" class="btn btn-success" value="Sửa">
                                 </div>    
                                </div>
                        </div>

                   
                </form>
            </div>

    </body>
</html>
