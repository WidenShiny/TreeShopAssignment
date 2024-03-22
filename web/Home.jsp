<%-- 
    Document   : Home
    Created on : Mar 15, 2022, 9:23:49 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Green Garden</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/Image/Logo/Logo.png" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="assets/css/styles.css" rel="stylesheet" />
    </head>

    <body>
        <!-- Navigation-->
        <%@include file="components/navBarCompnents.jsp"%>
        <!-- Header-->
        <header class="bg-dark" style="height: 900px;">
            <img class="w-100 h-100 " style="object-fit: cover" src="assets/Image/Banner/GreenGarden.png">
        </header>
        <!-- Section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="col mb-5">
                    <h3 class="text-center">Product new</h3>
                    <hr>
                    <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">

                        <c:forEach items="${listProductNew}" var="n">
                            <div class="col" style="margin-top:35px; display: flex; justify-content: center;" >
                                <div class="card h-100 w-100 d-flex">
                                    <!-- Product image-->
                                    <img class="card-img-top h-75 w60 px-4 py-4" src="${n.imageUrl}" alt="..." />

                                    <div class="card-body p-4">
                                        <div class="text-center">
                                            <!-- Product name-->
                                            <h5 class="fw-bolder">${n.productName}</h5>
                                            <!-- Product price-->
                                            ${n.price}₫
                                        </div>
                                    </div>
                                    <!-- Product deltails-->
                                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                        <div class="text-center">
                                            <a class="btn mt-auto"
                                               style="color: #ff8c1a; background-color: #fff3e6; border: 1px solid #e3b04b"
                                               href="details?productId=${n.productId}">View details</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>

                    </div>
                </div>
                <div class="col mb-5">
                    <h3 class="text-center">Product best sale</h3>
                    <hr>
                    <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">

                        <c:forEach items="${listProductBestSale}" var="s">
                            <div class="col" style="margin-top:35px; display: flex; justify-content: center;" >
                                <div class="card h-100 w-100 d-flex">
                                    <!-- Product image-->
                                    <img class="card-img-top h-75 w60 px-4 py-4" src="${s.imageUrl}" alt="..." />

                                    <div class="card-body p-4">
                                        <div class="text-center">
                                            <!-- Product name-->
                                            <h5 class="fw-bolder">${s.productName}</h5>
                                            <!-- Product price-->
                                            ${s.price}₫
                                        </div>
                                    </div>
                                    <!-- Product deltails-->
                                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                        <div class="text-center">
                                            <a class="btn mt-auto"
                                               style="color: #ff8c1a; background-color: #fff3e6; border: 1px solid #e3b04b"
                                               href="details?productId=${n.productId}">View details</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>

                    </div>
                </div>
                <div class="col d-flex" style="margin-top: 100px; margin-bottom: 100px">
                    <div class="col-md-6">

                        <img class="text-center float-left w-100" src="assets/Image/Picture/PictureHome.jpg">

                    </div>
                    <div class="col-md-6">
                        <h3 class="text-center float-right">Benefits of planting trees</h3>
                        <p class="w-100 text-center p-3">Cây xanh từ xưa đến nay luôn được coi là “lá phổi” của Trái đất. Trồng nhiều cây xanh giúp cung cấp một lượng lớn oxy cho chúng ta thở. Trung bình cứ một cây xanh có thể cung cấp đủ lượng oxy cho 04 người. Đồng thời chúng cũng hấp thụ CO2, amoniac, SO2, Nox, bụi bẩn,… từ đó làm giảm các khí độc hại bị thải ra môi trường, giúp không khí trở nên trong lành hơn.</p>
                    </div>
                </div>
            </div>

        </section>
        <!-- Footer-->
        <%@include file="components/FooterComponents.jsp" %>
        <!-- Bootstrap core JS-->
    </body>

</html>
