<%-- 
    Document   : ManagerProduct
    Created on : Mar 15, 2022, 1:12:25 PM
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

        <section class="py-5">
            <div class="container" style="min-height: 900px">
                <h3 class="mb-5">Manager Product</h3>
                <h3><a href="addproduct" 
                       class="btn"
                       style="color: white; background-color: #e3b04b; border: 1px solid #e3b04b">
                        Add new product
                    </a>
                </h3>
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Image</th>
                            <th scope="col">Name</th>
                            <th scope="col">Price</th>
                            <th scope="col">Quantity</th>
                            <th scope="col">Create date</th>
                            <th scope="col">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${listProducts}" var="p">
                        <tr>
                            <th scope="row">${p.productId}</th>                              
                            <td><img src="${p.imageUrl}" width="75"></td>
                            <td>${p.productName}</td>
                            <td>${p.price}</td>
                            <td>${p.quantity}</td>
                            <td>${p.getStringDate()}</td>

                            <td>
                                <a href="updateproduct?productId=${p.productId}" class="btn btn-success text-white">Update</a>
                                <a href="deleteproduct?productId=${p.productId}" class="btn btn-danger">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>

                    </tbody>
                </table>
                <nav class="d-flex justify-content-center " aria-label="Page navigation example">
                    <ul class="pagination">
                        <c:if test="${page > 1}">
                            <li class="page-item ">
                                <a class="page-link" 
                                   style="" 
                                   href="managerproduct?page=${page-1}" aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                </a>
                            </li>
                        </c:if>

                        <c:forEach begin="1" end="${totalPage}" var="i">

                            <li class="page-item ${i==page?"active":""}">

                                <a class="page-link"
                                   style=""
                                   href="managerproduct?page=${i}">${i}</a>
                            </li>
                        </c:forEach>
                        <c:if test="${page < totalPage}">
                            <li class="page-item">
                                <a class="page-link" 
                                   style="" 
                                   href="managerproduct?page=${page+1}" aria-label="Next">
                                    <span aria-hidden="true">&raquo;</span>
                                </a>
                            </li>
                        </c:if>
                    </ul>
                </nav>
            </div>
        </section>



        <%@include file="components/FooterComponents.jsp" %>

    </body>
</html>
