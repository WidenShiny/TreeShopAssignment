<%-- 
    Document   : AboutUs
    Created on : Mar 15, 2022, 3:14:50 PM
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
        <!--Navbar-->
        <%@include file="components/navBarCompnents.jsp"%>

        <!-- Section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="col d-flex" style="margin-top: 100px; margin-bottom: 100px">
                    <div class="col-md-6">

                        <img class="text-center float-left w-75 h-75" src="assets/Image/Picture/Shop.jpg">

                    </div>
                    <div class="col-md-6">
                        <h3 class="text-center float-right">About us</h3>
                        <p class="w-100 text-center p-3">Cuộc sống của chúng ta giống như một cuộn len cho riên mình, nó mang màu sắc riêng của bạn
                            , của chính chúng ta. Với những vướng mắc mà chúng ta gặp phải trong cuộc sống thường ngày
                            như: học tập , tình yêu, công việc... những thứ làm cho cái đầu ta muốn nổ tung. Chính vì thế nhu
                            cầu xả stress đã, đang và sẽ là nhu cầu cấp thiết trong cuộc sống hiện tại. Sau một ngày làm 
                            việc và học tập vất vả, trở về với căn phòng với những giấy trang trí, giấy dán tường,... cũng
                            sẽ giúp bạn giải tỏa căng thẳng.</p>
                    </div>
                </div>
            </div>
            <div class="container px-4 px-lg-5 mt-5">
                <div class="col d-flex" style="margin-top: 100px; margin-bottom: 100px">
                    <div class="col-md-6">
                        <p class="w-100 text-center p-3">Nhưng!Có khi nào bạn nghĩ đến một mầm xanh của sự sống, của thiên nhiên sẽ giúp bạn thoải
                            mái hơn, yêu cuộc sống hơn không? Bạn sẽ nghĩ sao nếu mở mắt bước ra ban công có một chậu
                            hoa xương rồng mỉm cười với bạn. Có khí nào bạn nghĩ rằng đưa không gian xanh của thiên nhiên
                            nhiên vào cuộc sống của mình. GreenGarden sẽ đáp ứng các như cầu của các bạn với các sản phẩm
                            như: xương rồng, hoa, sen đá và các loại cây tiểu cảnh.</p>



                    </div>
                    <div class="col-md-6">

                        <img class="text-center float-left w-75 h-75 mx-5" src="assets/Image/Picture/Shop1.jpg">
                    </div>
                </div>
            </div>

        </section>
        <!-- Footer-->

        <%@include file="components/FooterComponents.jsp" %>
        <!-- Bootstrap core JS-->
    </body>

</html>

