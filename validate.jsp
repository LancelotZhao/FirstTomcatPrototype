<%--
  Created by IntelliJ IDEA.
  User: Roy
  Date: 2018-12-06
  Time: 21:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    boolean validated = false;
    final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
    final String DB_URL = "jdbc:mysql://169.254.135.246:3306/SE_CW2?characterEncoding=utf8&useSSL=false&allowPublicKeyRetrieval=true";
//    final String DB_URL = "jdbc:mysql://localhost:3306/SE_CW2?characterEncoding=utf8&useSSL=false&allowPublicKeyRetrieval=true";
//    final String USER = "root";
//    final String PASS = "diamorphine";
    final String USER = "newuser1";
    final String PASS = "123qweasdzxc";
    Connection con = null;
    Statement stmt = null;
    try {
        Class.forName(JDBC_DRIVER);
        con = DriverManager.getConnection(DB_URL, USER, PASS);
        stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM login");
        while (rs.next()) {
            if (username.equals(rs.getString("username")) && password.equals(rs.getString("password")))
                validated = true;
        }
        rs.close();
        stmt.close();
        con.close();
    } catch (ClassNotFoundException se) {
        se.printStackTrace();
    } catch (SQLException sqle) {
        sqle.printStackTrace();
    }
    if (validated) {
%>
<jsp:forward page="main.jsp"/>
<%
} else {
%>
<jsp:forward page="error.jsp"/>
<%
    }
%>

</body>
</html>
