<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
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
    <%@include file="/fragments/header.jsp" %>
    <h2>Product Details</h2>
    <div>
        <form class="form-horizontal">
            <div class="form-group">
                <label class="col-sm-2 control-label">Product Id:</label>
                <div class="col-sm-10">
                    <!--/*@thymesVar id="product" type="com.ensat.entities.Product"*/-->
                    <p class="form-control-static" th:text="${product.id}">${product.id}</p></div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">Name:</label>
                <div class="col-sm-10">
                    <p class="form-control-static" th:text="${product.name}">${product.name}</p>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">Price:</label>
                <div class="col-sm-10">
                    <p class="form-control-static" th:text="${product.price}">${product.price}</p>
                </div>
            </div>
        </form>
    </div>
</div>

</body>
</html>