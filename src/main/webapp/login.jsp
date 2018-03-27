<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String name = request.getParameter("name");
    String password = request.getParameter("password");

    if (name == null) {
        name = "";
    }
    if (password == null) {
        password = "";
    }
    if ((name.equals("admin") && (password.equals("password")))) {
        response.sendRedirect("/profile.jsp");
    }
%>

<jsp:include page="partials/navbar.jsp"/>
<jsp:include page="partials/CSS.jsp"/>

<html>
<head>
    <title>LogIn</title>
</head>
<body>

<div class="parallax"></div>

<div class="login">
    <form action="login.jsp" method="post">
        Please enter username and password.<br>
        Username:<input type="text" name="name" /><br>
        Password:<input type="password" name="password" /><br>
        <input type="submit" value="Submit">
    </form>
</div>
<div class="parallax"></div>

</body>
</html>
