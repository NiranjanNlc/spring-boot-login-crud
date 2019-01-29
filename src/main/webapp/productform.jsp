<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="th" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head><title>SpringBoot</title>
    <style>
        table {
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
<%@include file="fragments/header.jsp" %>
<hr/>
<form method="post" action="/product">
    <input type="hidden" name="id" value="${product.id}"/><br/>
    <input type="hidden" name="version" value="${product.version}"/><br/>
    Product id:
    <input type="text" name="productId" value="${product.productId}"/><br/>
    product name:
    <input type="text" name="name" value="${product.name}"/><br/>
    Product price:
    <input type="text" name="price" value="${product.price}"/><br/>

    <div class="row">
        <input type="hidden"
               name="${_csrf.parameterName}"
               value="${_csrf.token}"/>
        <input type="hidden" th:th:name="${_csrf.parameterName}" th:value="${_csrf.token}"/>
        <button type="submit" class="btn btn-default">Submit</button>
    </div>
</form>

</body>
</html>

