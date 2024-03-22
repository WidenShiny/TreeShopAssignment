<%-- 
    Document   : Thanks
    Created on : Mar 15, 2022, 1:24:02 PM
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

        <div class="container" style="min-height: 500px">
            <div class="alert alert-light text-center mt-5" role="alert">
                <h3>Order successfully, Thank you very much...</h3>
                <div class="text-center mt-2">
                    <a class="btn btn-outline-warning mt-5" href="home" style="color: white; background-color: #e3b04b; border: 1px solid #e3b04b">Continue Shopping</a>
                </div>
            </div>
        </div>

        <%@include file="components/FooterComponents.jsp" %>
    </body>

</html>
