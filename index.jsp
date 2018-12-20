<%@ page import="java.sql.*" %>
Created by IntelliJ IDEA.
User: Roy
Date: 2018-12-06
Time: 20:04
To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<form action="validate.jsp" method="post">
    <div><h2>Login / SignUp</h2></div>
    <div>Username</div>
    <p><input type="text" name="username"/></p>
    <p><div>Password</div></p>
    <p><input type="text" name="password"/></p>
    <p><input type="submit" value="Login"/></p>
    <%--<input type="submit" value="Sign Up"/></p>--%>
</form>
<a href="SignUp.jsp">Don't have one?</a>
</body>
</html>
