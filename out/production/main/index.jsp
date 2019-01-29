<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3"
      xmlns:layout="http://www.ultraq.net.nz/thymeleaf/layout">

<head lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>Spring Boot Example</title>
    <%@include file="fragments/headerinc.html" %>
    <!--/*/ <th:block th:include="fragments/headerinc :: head"></th:block> /*/-->
</head>
<body>

<div class="container">
    <%@include file="fragments/header.jsp" %>
    <!--/*/ <th:block th:include="fragments/header :: header"></th:block> /*/-->
</div>
</body>
</html>



 