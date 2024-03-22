<%-- 
    Document   : PurchaseHistory
    Created on : Mar 16, 2022, 11:44:38 PM
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
                <h3 class="mb-5">Purchase History</h3>
                <table class="table">
                    <thead>
                        <tr>

                            <th scope="col">Image</th>
                            <th scope="col">Product name</th>
                            <th scope="col">Price</th>
                            <th scope="col">Quantity</th>
                            <th scope="col">Total price</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${purchaseHis}" var="p">
                            <tr>
                                <th scope="row"><img src="${p.imageUrl}" width="75"></th>                              
                                <td>${p.productName}</td>
                                <td>${p.price}</td>
                                <td>${p.quantity}</td>
                                <td>${p.price*p.quantity}</td>
                            </tr>
                        </c:forEach>

                    </tbody>
                </table>
            </div>
        </section>



        <%@include file="components/FooterComponents.jsp" %>

    </body>
</html>

