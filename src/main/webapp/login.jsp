<%--
  Created by IntelliJ IDEA.
  User: david
  Date: 3/30/18
  Time: 11:14 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <jsp:include page="partials/head.jsp" />
</head>
<body>
<jsp:include page="partials/navbar.jsp" />

<%
    if (request.getMethod().equalsIgnoreCase("post")) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if (username.equalsIgnoreCase("admin") && password.equalsIgnoreCase("password")) {
            response.sendRedirect("/profile.jsp");
        }
    }
%>

<form action="/login.jsp" method="POST">
    <div class="form-group">
        <label for="username">Username: </label>
        <input type="text" name="username" class="form-control" id="username" placeholder="Enter your username">
    </div>
    <div class="form-group">
        <label for="password">Password: </label>
        <input type="password" name="password" class="form-control" id="password" placeholder="Enter your password">
    </div>
    <button type="submit" class="btn btn-default">Submit</button>
</form>
</body>
</html>
