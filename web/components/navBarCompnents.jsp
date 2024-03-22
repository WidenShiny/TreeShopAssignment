<%-- 
    Document   : navBarCompnents
    Created on : Mar 15, 2022, 12:21:37 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--Navigation-->


<html>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container">
            <a class="navbar-brand" href="#"><img src="assets/Image/Logo/Logo.png"></a>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-lg-0 ms-lg-4">
                    <c:if test="${sessionScope.account.isAdmin == 0 || sessionScope.account.isAdmin == null}">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="home">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="product">Store</a></li>
                        <li class="nav-item"><a class="nav-link" href="AboutUs.jsp">About us</a></li>
                        <li class="nav-item"><a class="nav-link" href="Policy.jsp">Policy</a></li>
                        </c:if>

                    <c:if test="${sessionScope.account.isAdmin == 1}">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="home">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="product">Store</a></li>
                        <li class="nav-item"><a class="nav-link" href="managerproduct">Manager products</a></li>
                        <li class="nav-item"><a class="nav-link" href="managerorder">Manager orders</a></li>
                        </c:if>
                </ul>
                <form action="search" class="d-flex px-lg-2" >
                    <input class="form-control me-2" type="search" placeholder="Search..." aria-label="Search" style="width: 250px;" name="keyword" value=${keyword}>
                    <button class="btn" style="color: white; background-color: #e3b04b; border: 1px solid #e3b04b" type="submit">Search</button>
                </form>

                <div class="d-flex my-2">
                    <a class="btn" style="color: white; background-color: #e3b04b; border: 1px solid #e3b04b" href="carts">
                        <i class="bi-cart-fill me-1"></i>
                        Cart
                        <span class="badge bg-light ms-1 rounded-pill" style="color:#e3b04b">${sessionScope.carts.size()}</span>
                    </a>
                </div>
                <c:if test="${sessionScope.account == null}">
                    <form class="d-flex ms-2">
                        <button class="btn" style="color: white; background-color: #e3b04b; border: 1px solid #e3b04b" onclick="location.href = 'Login.jsp'" type="button">
                            Login
                        </button>
                    </form>
                </c:if>
                <c:if test="${sessionScope.account != null}">
                    <form class="d-flex ms-2">
                        <div class="btn-group">
                            <button type="button" class="btn btn-danger dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                                Hello,${sessionScope.account.username}
                            </button>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="profile">Profile</a></li>
                                <li><a class="dropdown-item" href="changepass">Change password</a></li>
                                <li><a class="dropdown-item" href="orderhistory">Purchase history</a></li>
                                <li><a class="dropdown-item" href="logout">Logout</a></li>
                            </ul>
                        </div>
                    </form>
                </c:if>

            </div>
        </div>
    </nav>
</html>

