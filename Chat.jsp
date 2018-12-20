<%--
  Created by IntelliJ IDEA.
  User: Roy
  Date: 2018-12-17
  Time: 21:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" %>
<html>
<head>
    <title>Hello</title>
</head>
<body>
<%
    final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
    final String DB_URL = "jdbc:mysql://169.254.135.246:3306/SE_CW2?characterEncoding=utf8&useSSL=false&allowPublicKeyRetrieval=true";
//    final String DB_URL = "jdbc:mysql://localhost:3306/SE_CW2?characterEncoding=utf8&useSSL=false&allowPublicKeyRetrieval=true";
//    final String USER = "root";
//    final String PASS = "diamorphine";
    final String USER = "newuser1";
    final String PASS = "123qweasdzxc";
    Connection con = null;
    Statement stmt = null;
    String message = request.getParameter("message");
    try {
        Class.forName(JDBC_DRIVER);
        con = DriverManager.getConnection(DB_URL, USER, PASS);
        stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM History");
//        rs.insertRow();
        String cmd = "INSERT INTO History (Text) VALUES (\"" + message + "\")";
        System.out.println(cmd);
        stmt.executeUpdate(cmd);
        System.out.println(message);
        rs.close();
        stmt.close();
        con.close();
    } catch (ClassNotFoundException se) {
        se.printStackTrace();
    } catch (SQLException sqle) {
        sqle.printStackTrace();
    }
%>
<jsp:forward page="main.jsp"/>


</body>
</html>
