<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3"
      xmlns:layout="http://www.ultraq.net.nz/thymeleaf/layout">
<head lang="en">

    <title>Spring Boot Exemple</title>

    <!--/*/ <th:block th:include="fragments/headerinc :: head"></th:block> /*/-->
    <style>
        table {
            align: centre;
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        td, th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #dddddd;
        }
    </style>
</head>
<body>
<div class="container">
    <%@include file="fragments/header.jsp" %>
    <!--/*/ <th:block th:include="fragments/header :: header"></th:block> /*/-->
    <!--/*@thymesVar id="lists" type="com.ensat.services.ProductService"*/-->

        <h2>Product List</h2>
        <table class="table table-striped">
            <tr>
                <th>Id</th>
                <th>Product Id</th>
                <th>Name</th>
                <th>Price</th>
                <th>Category</th>
                <th>View</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
            <c:forEach var = "product" items = "${lists}">
  <tr>

                <td  > ${product.id}  </td>
                <td  > ${product.productId}</td>
                <td  >${product.name}</td>
      <td  >${product.price}</td>
      <td  >${product.category}</td>
      <td><a href="product/${product.id}">View</a></td>
      <td>
          <a href="product/delete/${product.id}">Delete</a></td>
                   <td> <a href="/edit/${product.id}">Edit</a></td>

            </tr>
            </c:forEach>
        </table>

    </div>
</div>

</body>
</html>