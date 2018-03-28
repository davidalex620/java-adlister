<%--
  Created by IntelliJ IDEA.
  User: david
  Date: 3/28/18
  Time: 11:20 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pick color</title>
</head>
<body>

<h1>Please pick a color</h1>

<form action="/color-welcome" method="post">
    <input type="radio" name="color" value="red">Red<br>
    <input type="radio" name="color" value="blue">Blue<br>
    <input type="radio" name="color" value="green">Green<br>
    <input type="radio" name="color" value="yellow">Yellow<br>
    <input type="submit" value="submit">
</form>

</body>
</html>
