<%-- 
    Document   : ChangePass
    Created on : Mar 15, 2022, 1:33:10 PM
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

        <form action="changepass" method="post">
            <div class="container rounded bg-white mt-5 mb-5 d-flex justify-content-center">
                <div class="row w-50 ">
                    <div class="align-items-center">
                        <div class="p-3 py-5">
                            <div class="d-flex justify-content-center align-items-center mb-3">
                                <h4 class="text-center">Change password</h4>
                            </div>
                            <div class="row mt-3 d-flex justify-content-center">
                                <p class="text-danger text-center">${checkoldpass}</p>
                                <p class="text-danger text-center">${checknewpass}</p>
                                <p class="text-success text-center">${changesuccess}</p>
                                <div class="w-75"><label class="labels">Old password</label><input type="password" class="form-control" placeholder="Enter old password" name="oldpass"></div>
                                <div class="w-75"><label class="labels">New password</label><input type="password" class="form-control" placeholder="Enter new password" name="newpass"></div>
                                <div class="w-75"><label class="labels">Re-enter new password</label><input type="password" class="form-control" placeholder="Re-enter new password" name="renewpass"></div>
                            </div>
                            <div class="mt-5 text-center"><button class="btn profile-button" type="submit" style="color: white; background-color: #e3b04b; border: 1px solid #e3b04b">Save Profile</button></div>
                        </div>
                    </div>
                </div>
            </div>
        </form>

        <%@include file="components/FooterComponents.jsp" %>

    </body>
</html>

