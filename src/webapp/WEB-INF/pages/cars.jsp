<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<body>
<c:set var="locale" scope="session" value="${param.get(\"locale\")}"/>
<c:set var="ru" scope="session" value="ru"> </c:set>
<c:set var="en" scope="session" value="en"> </c:set>

<table border="1">
    <c:choose>
        <c:when test="${ru.equals(locale)}">
            <tr>
                <th>Имя машины</th>
                <th>Цена машины</th>
                <td>Тип машины</td>
            </tr>
        </c:when>
        <c:when test="${en.equals(locale)}">
            <tr>
                <th>name of cars</th>
                <th>price of cars</th>
                <td>type of cars</td>
            </tr>
        </c:when>
        <c:otherwise>
            <tr>
                <th>name of cars</th>
                <th>price of cars</th>
                <td>type of cars</td>
            </tr>
        </c:otherwise>
    </c:choose>

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