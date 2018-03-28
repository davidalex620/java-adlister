<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: david
  Date: 3/28/18
  Time: 2:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <div class="container">
        <c:forEach var="ad" items="${ads}">
            <h1>${ad.title}</h1>
            <p>${ad.description}</p>
        </c:forEach>
    </div>
</body>
</html>
