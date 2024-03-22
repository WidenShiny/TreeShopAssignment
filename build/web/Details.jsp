<%-- 
    Document   : Details
    Created on : Mar 15, 2022, 12:51:49 PM
    Author     : Admin
--%>

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

        <section class="py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="row gx-4 gx-lg-5" style="display: flex; justify-content: center">
                    <div class="col-md-5"><img class="card-img-top mb-5 mb-md-0" src="${product.imageUrl}" alt="..." /></div>
                    <div class="col-md-5">
                        <h1 class="display-5 fw-bolder">${product.productName}</h1>
                        <div class="fs-3 mb-2">ID:${product.productId}</div>
                        <div class="fs-3 mb-4">

                            <span>${product.price}₫</span>
                        </div>
                        <p class="lead">${product.quantity} in stock</p>
                        <hr>
                        <p class="lead mb-5">${product.descript}</p>

                        <div class="d-flex mt-3">
                            <a href="addtocart?productId=${product.productId}"
                               class="btn btn-outline-dark flex-shrink-0"
                               style="color: #ff8c1a; background-color: #fff3e6; border: 1px solid #e3b04b"
                               type="button">
                                <i class="bi-cart-fill me-1"></i>
                                Add to cart
                            </a>
                               <a href="buynow?productId=${product.productId}"
                                class="btn btn-outline-dark flex-shrink-0 ms-3"
                                style="color: white; background-color: orange; border: 1px solid #e3b04b"
                                type="button">
                                <i class="bi-cart-fill me-1"></i>
                                Buy now
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <%@include file="components/FooterComponents.jsp" %>
    </body>

</html>

