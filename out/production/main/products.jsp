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
</head>
<body>
<div class="container">
    <!--/*/ <th:block th:include="fragments/header :: header"></th:block> /*/-->
    <!--/*@thymesVar id="lists" type="com.ensat.services.ProductService"*/-->

        <h2>Product List</h2>
        <table class="table table-striped">
            <tr>
                <th>Id</th>
                <th>Product Id</th>
                <th>Name</th>
                <th>Price</th>
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
      <td><a href="product/view/${product.id}">View</a></td>
      <td>
          <a href="product/delete/${product.id}">Delete</a></td>
                   <td> <a href="product/edit/${product.id}">Edit</a></td>

            </tr>
            </c:forEach>
        </table>

    </div>
</div>

</body>
</html>