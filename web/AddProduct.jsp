<%-- 
    Document   : AddProduct
    Created on : Mar 15, 2022, 1:17:54 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Green Garden</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/Image/Logo/Logo.png" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <link rel="stylesheet" href="assets/fonts/fontawesome-free-6.0.0-web/css/all.min.css">
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="assets/css/styles.css" rel="stylesheet"/>

    </head>

    <body>

        <%@include file="components/navBarCompnents.jsp"%>

        <form action="addproduct" method="post">

            <div class="container rounded bg-white mt-5 mb-5 d-flex justify-content-center">
                <div class="row w-50 ">
                    <div class="align-items-center">
                        <div class="p-3 py-5">
                            <div class="d-flex justify-content-center align-items-center mb-3">
                                <h4 class="text-center">Add new product</h4>                            
                            </div>
                            <hr>
                            <div class="row mt-3 d-flex justify-content-center">
                                <div class="w-75 mb-2"><label class="labels">Image URL</label><input type="text" class="form-control" name="imageUrl"></div>
                                <div class="w-75 mb-2"><label class="labels">Product name</label><input type="text" class="form-control"  name="productName"></div>
                                <div class="w-75 mb-2"><label class="labels">Price</label><input type="number" class="form-control"  name="price"></div>
                                <div class="w-75 mb-2"><label class="labels">Quantity</label><input type="number" class="form-control" name="quantity"></div>
                                <div class="w-75 mb-2"><label class="labels">Create date</label><input type="date" class="form-control" name="createDate"></div>
                                <div class="w-75 mb-2"><label class="labels">Description</label><textarea style="height: 150px" name="descript" class="form-control" required></textarea></div>

                                <div class="w-75"><label class="labels">Category</label>
                                    <select name="category" class="form-select">
                                        <c:forEach items="${listCategory}" var="c">
                                            <option value="${c.categoryId}">${c.categoryName}</option>
                                        </c:forEach>                                   
                                    </select>
                                </div>
                            </div>
                            <div class="mt-5 text-center">
                                <input class="p-2"
                                       type="submit"
                                       value="ADD"
                                       style="color: white; background-color: #e3b04b; border: 1px solid #e3b04b">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </body>
    <%@include file="components/FooterComponents.jsp" %>
</html>

