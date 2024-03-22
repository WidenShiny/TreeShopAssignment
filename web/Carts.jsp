<%-- 
    Document   : Carts
    Created on : Mar 15, 2022, 1:04:26 PM
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
            <div class="container" style="min-height: 900px">

                <c:choose>
                    <c:when test="${sessionScope.carts==null || sessionScope.carts.size()==0}">

                        <h2 class="text-center mt-5">List Cart is Empty</h2>
                        <div class="text-center mt-2">
                            <a class="btn btn-outline-warning mt-5" href="product" style="color: white; background-color: #e3b04b; border: 1px solid #e3b04b">Continue Shopping</a>
                        </div>
                    </c:when>
                    <c:otherwise>
                        <h3>Shopping Cart</h3>
                        <p class="text-danger">${mess}</p>
                        <table class="table" >
                            <thead>
                                <tr>
                                    <th scope="col">Image</th>
                                    <th scope="col">Name</th>
                                    <th scope="col">Price</th>
                                    <th scope="col">Quantity</th>
                                    <th scope="col">Total price</th>
                                    <th scope="col">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${carts}" var="c">
                                <form action="updatequantity">
                                    <tr>
                                    <input type="hidden" name="productId" value="${c.value.product.productId}">
                                    <td><img src="${c.value.product.imageUrl}" width="75"></td>
                                    <td>${c.value.product.productName}</td>
                                    <td>${c.value.product.price}</td>
                                    <td class="quantity-cart">

                                        <input style="width: 60px" onchange="this.form.submit()" name="quantity" type="number" value="${c.value.quantity}">
                                    </td>
                                    <td>${c.value.quantity*c.value.product.price}</td>
                                    <td><a href="deletecart?productId=${c.value.product.productId}" class="btn btn-danger">Delete</a></td>
                                    </tr>
                                </form>
                            </c:forEach>
                            </tbody>
                        </table>

                        <h3>Total Amount: ${totalMoney}₫</h3>

                        <a href="checkout" class="btn w-25 mt-3" style="color: white; background-color: #e3b04b; border: 1px solid #e3b04b">Check out</a>
                    </c:otherwise>
                </c:choose>
            </div>
        </section>
        <%@include file="components/FooterComponents.jsp" %>
    </body>
</html>
