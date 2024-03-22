<%-- 
    Document   : Profile
    Created on : Mar 15, 2022, 1:34:48 PM
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
        <form action="profile" method="post">
            <div class="container rounded bg-white mt-5 mb-5">
                <div class="row">
                    <div class="d-flex justify-content-between align-items-center mb-3">
                        <h4 class="text-center">Profile Settings</h4>
                    </div>
                    <hr>
                    <p class="text-success text-center">${mess}</p>
                    <div class="col-md-5">
                        <div class="d-flex flex-column align-items-center text-center p-3 py-5"><img class="rounded-circle mt-5" width="150px" src="assets/Image/Picture/icon-profile.jpg"><span class="font-weight-bold">${sessionScope.account.username}</span><span class="text-black-50">${sessionScope.account.email}</span><span> </span></div>
                    </div>
                    <div class="col-md-5">
                        <div class="p-3 py-5">
                            <div class="row mt-3">
                                <div class="col-md-12"><label class="labels">Name</label><input type="text" name="name" class="form-control" value="${acc.name}"></div>
                                <div class="col-md-12"><label class="labels">Phone</label><input type="text" name="phone" class="form-control" value="${acc.phone}"></div>
                                <div class="col-md-12"><label class="labels">Address</label><input type="text" name="address" class="form-control" value="${acc.address}"></div>
                                <div class="col-md-12"><label class="labels">Email</label><input type="text" name="email" class="form-control" value="${acc.email}"></div>
                            </div>
                            <div class="mt-5 text-center"><button class="btn btn-primary profile-button" type="submit" style="color: white; background-color: #e3b04b; border: 1px solid #e3b04b">Save Profile</button></div>
                        </div>
                    </div>

                </div>
            </div>
        </form>
        <%@include file="components/FooterComponents.jsp" %>

    </body>
</html>