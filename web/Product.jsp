<%-- 
    Document   : Product
    Created on : Mar 15, 2022, 12:42:05 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

        <!-- List Categories-->
        <c:choose>
            <c:when test="${listProducts==null || listProducts.size()==0}">
                <h3 class="notfound text-center my-5">Sorry, we could not find anything for "${keyword}"</h3>
            </c:when>
            <c:otherwise>
                <section class="py-5">
                    <div class="container px-4 px-lg-5 mt-5">
                        <div class="row">
                            <div class="col-md-3 mb-5">
                                <h3 class="mb-5">CATEGORIES</h3>
                                <li class="list-group-item w-75" style="background-color: #fff3e6">
                                    <a style="text-decoration: none;color: #ff8c1a; " href="product">Tất cả</a></li>
                                <br>
                                <hr>
                                <ul class="list-group mb-2">
                                    <c:forEach items="${listCategories}" var="c">

                                        <li class="list-group-item w-75" ${categoryId==c.categoryId?"active":""}style="background-color: #fff3e6">
                                            <a style="text-decoration: none;color: #ff8c1a; " href="filtercategory?categoryId=${c.categoryId}">${c.categoryName}</a></li>

                                    </c:forEach>
                                </ul>
                        </div>

                        <!--List Products-->
                        <div class="col-md-9">
                            <h3 class="mb-2" style="text-align: center">LIST PRODUCTS</h3>
                            <hr>
                            <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 justify-content-center">
                                <c:forEach items="${listProducts}" var="p">
                                    <div class="col" style="margin-top:35px; display: flex; justify-content: center;" >
                                        <div class="card h-100 w-100 d-flex">
                                            <!-- Product image-->
                                            <img class="card-img-top h-75 w60 px-4 py-4" src="${p.imageUrl}" alt="..." />

                                            <div class="card-body p-4">
                                                <div class="text-center">
                                                    <!-- Product name-->
                                                    <h5 class="fw-bolder">${p.productName}</h5>
                                                    <!-- Product price-->
                                                    ${p.price}₫
                                                </div>
                                            </div>
                                            <!-- Product deltails-->
                                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                                <div class="text-center">
                                                    <a class="btn mt-auto"
                                                       style="color: #ff8c1a; background-color: #fff3e6; border: 1px solid #e3b04b"
                                                       href="details?productId=${p.productId}">View details</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                            <c:if test="${keyword == null}">
                                <nav class="d-flex justify-content-center mt-5" aria-label="Page navigation example">
                                    <c:choose>
                                        <c:when test="${product != null}">
                                            <c:set var="p" value="${product}?"/>
                                        </c:when>
                                        <c:when test="${category != null}">
                                            <c:set var="p" value="${category}?categoryId=${categoryId}&&"/>
                                        </c:when>

                                    </c:choose>
                                    <ul class="pagination">
                                        <c:if test="${page > 1}">
                                            <li class="page-item ">
                                                <a class="page-link" 
                                                   style="" 
                                                   href="${p}page=${page-1}" aria-label="Previous">
                                                    <span aria-hidden="true">&laquo;</span>
                                                </a>
                                            </li>
                                        </c:if>

                                        <c:forEach begin="1" end="${totalPage}" var="i">

                                            <li class="page-item ${i==page?"active":""}">

                                                <a class="page-link"
                                                   style=""
                                                   href="${p}page=${i}">${i}</a>
                                            </li>
                                        </c:forEach>
                                        <c:if test="${page < totalPage}">
                                            <li class="page-item">
                                                <a class="page-link" 
                                                   style="" 
                                                   href="${p}page=${page+1}" aria-label="Next">
                                                    <span aria-hidden="true">&raquo;</span>
                                                </a>
                                            </li>
                                        </c:if>
                                    </ul>
                                </nav>
                            </c:if>


                        </c:otherwise>
                    </c:choose>

                </div>
            </div>

        </div>
    </section>
    <%@include file="components/FooterComponents.jsp" %>

</body>

</html>
