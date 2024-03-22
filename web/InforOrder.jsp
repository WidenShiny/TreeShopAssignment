<%-- 
    Document   : InforOrder
    Created on : Mar 16, 2022, 11:08:33 PM
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
                <div class="mb-5">
                    <h3>Information of customer</h3>
                    <hr>
                    <h4>Name: ${infor.name}</h4>
                    <h4>Phone: ${infor.phone}</h4>
                    <h4>Address: ${infor.address}</h4>
                </div>
                <h3 class="mb-5">Order detail</h3>
                <table class="table">
                    <thead>
                        <tr>

                            <th scope="col">Image</th>
                            <th scope="col">Product name</th>
                            <th scope="col">Price</th>
                            <th scope="col">Quantity</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${listDetails}" var="d">
                            <tr>
                                <th scope="row"><img src="${d.imageUrl}" width="75"></th>                              
                                <td>${d.productName}</td>
                                <td>${d.price}</td>
                                <td>${d.quantity}</td>
                            </tr>
                        </c:forEach>

                    </tbody>
                </table>

            </div>
        </section>



        <%@include file="components/FooterComponents.jsp" %>

    </body>
</html>

