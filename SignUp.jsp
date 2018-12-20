<%--
  Created by IntelliJ IDEA.
  User: Roy
  Date: 2018-12-19
  Time: 21:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sign Up</title>
</head>
<body>
<form action="SignUp2.jsp" method="post">
    <div><h2>Login / SignUp</h2></div>
    <div>Username</div>
    <p><input type="text" name="username"/></p>
    <div>Password:</div>
    <p><input type="text" name="password"/></p>
    <div>Type password again:</div>
    <p><input type="text" name="password2"/></p>
    <input type="submit" value="Sign Up"/>
    <%--<p><input type="submit" value="Login"/></p>--%>
</form>

</body>
</html>
