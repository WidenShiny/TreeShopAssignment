<%-- 
    Document   : OrderHistory
    Created on : Mar 17, 2022, 11:56:52 AM
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
                <h3 class="mb-5">Manager Orders</h3>
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Date</th>
                            <th scope="col">Total price</th>
                            <th scope="col">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${listOrder}" var="o">
                            <tr>
                                <th scope="row">${o.orderId}</th>                              
                                <td>${o.getStringDate()}</td>
                                <td>${o.totalPrice}</td>
                                <td><a href="purchasehistory?orderId=${o.orderId}" class="btn btn-success text-white">View</a></td>
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

