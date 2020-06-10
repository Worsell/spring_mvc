<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
<head>
    <meta charset="utf-8">
    <title>Тег META, атрибут charset</title>
</head>

<body>

<table border="1">
    <tr>
        <th><spring:message code="label.first"/></th>
        <th><spring:message code="label.second"/></th>
        <td><spring:message code="label.third"/></td>
    </tr>
    <c:forEach var="car" items="${cars}">
        <tr>
            <th>${car.name}</th>
            <th>${car.price}</th>
            <td>${car.type}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>