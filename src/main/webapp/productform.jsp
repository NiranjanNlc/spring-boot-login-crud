<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="th" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head><title>SpringBoot</title>

</head>
<body>
<%@include file="/fragments/header.jsp" %>
<div class = "container">
 <b>
<form  class="form-horizontal" method="post"  action="/product/">
    <input type="hidden" name="id" value="${product.id}"/><br/>
    <input type="hidden" name="version" value="${product.version}"/><br/>
    Product id:
    <input type="text" name="productId" value="${product.productId}"/><br/>
    product name:
    <input type="text" name="name" value="${product.name}"/><br/>
    Product price:
    <input type="text" name="price" value="${product.price}"/><br/>
    Category :

    <input type="text" list="cars"  name="category"value="${product.category}" onmousedown="  value = ''" />
    <datalist id="cars" size="25">
        <option name="category" value="clothing">clothing</option>
        <option name="category" value="stationary">stationary</option>
        <option name="category"  value="fooding">fooding</option>

    </datalist>

    <div class="row">
        <input type="hidden"
               name="${_csrf.parameterName}"
               value="${_csrf.token}"/>
        <input type="hidden" th:th:name="${_csrf.parameterName}" th:value="${_csrf.token}"/>
        <button type="submit" class="btn btn-default" >Submit</button>
    </div>
</form>
    </b>

</div>
</body>
</html>

