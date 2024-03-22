<%-- 
    Document   : Checkout
    Created on : Mar 15, 2022, 1:22:04 PM
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
                <h3>Check out</h3>
                <div class="row">
                    <div class="col-md-8" style="border: 1px solid #ccc; border-radius: 5px; padding: 1rem">
                        <table class="table" >
                            <thead>
                                <tr>
                                    <th scope="col">Image</th>
                                    <th scope="col">Name</th>
                                    <th scope="col">Price</th>
                                    <th scope="col">Quantity</th>
                                    <th scope="col">Total price</th>

                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${carts}" var="c">
                                    <tr>
                                <input type="hidden" name="productId" value="${c.value.product.productId}">
                                <th scope="row"><img src="${c.value.product.imageUrl}" width="75"></th>
                                <td>${c.value.product.productName}</td>
                                <td>${c.value.product.price}</td>
                                <td>${c.value.quantity}</td>
                                <td>${c.value.quantity*c.value.product.price}</td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                        <h3>Total Amount: ${totalMoney}₫</h3>
                    </div>
                    <div class="col-md-4" style="border: 1px solid #ccc; border-radius: 5px; padding: 1rem">
                        <h3>Information of customer</h3>
                        <form action="checkout" method="POST">
                            <div class="mb-3">
                                <label for="name" class="form-label">Name</label>
                                <input type="text" class="form-control" id="name" name="name" aria-describedby="emailHelp">
                            </div>
                            <div class="mb-3">
                                <label for="phone" class="form-label">Phone</label>
                                <input type="text" class="form-control" id="phone" name="phone" aria-describedby="emailHelp">
                            </div>
                            <div class="mb-3">
                                <label for="address" class="form-label">Address</label>
                                <input type="text" class="form-control" id="address" name="address" aria-describedby="emailHelp">
                            </div>
                            <div class="mb-3">
                                <label for="note" class="form-label">Note</label>
                                <textarea class="form-control" id="note" name="note" rows="3"></textarea>
                            </div>
                            <button type="submit" class="btn btn-primary w-100" style="color: white; background-color: #e3b04b; border: 1px solid #e3b04b">Purchase</button>
                        </form>
                    </div>
                </div>
            </div>

        </section>
        <%@include file="components/FooterComponents.jsp" %>
    </body>
</html>

