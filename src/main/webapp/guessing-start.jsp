<%--
  Created by IntelliJ IDEA.
  User: david
  Date: 4/6/18
  Time: 10:23 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h3>Please pick a number</h3>
    <form action="/guess" method="post">
        Guess: <input type="text" name="guess"><br>
        <input type="submit" value="Submit">
    </form>
        ${pickNumber}
</body>
</html>
