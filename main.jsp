<%--
  Created by IntelliJ IDEA.
  User: Roy
  Date: 2018-12-06
  Time: 22:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" %>
<%--<%@ page import="java.io.*,java.util.*" %>--%>
<html>
<head>
    <title>Title</title>
</head>
<body style="height: 100%; width: 100%">

<h2>Welcome to the psychological program!</h2>
<h3><a href="Edit.jsp">Change Password</a></h3>
<div style="border: 2px solid; height: 80%; width: 60%; padding: 0.25%">
    <div style="border: 1px solid; height: 85%; padding: 3px">
        <textarea readonly="readonly" style="width: 100%; height: 100%;">
            <%
//                response.setIntHeader("Refresh", 3);
                final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
                final String DB_URL = "jdbc:mysql://169.254.135.246:3306/SE_CW2?characterEncoding=utf8&useSSL=false&allowPublicKeyRetrieval=true";
//                final String DB_URL = "jdbc:mysql://localhost:3306/SE_CW2?characterEncoding=utf8&useSSL=false&allowPublicKeyRetrieval=true";
//                final String USER = "root";
//                final String PASS = "diamorphine";
                final String USER = "newuser1";
                final String PASS = "123qweasdzxc";
                Connection con = null;
                Statement stmt = null;
                try {
                    Class.forName(JDBC_DRIVER);
                    con = DriverManager.getConnection(DB_URL, USER, PASS);
                    stmt = con.createStatement();
                    ResultSet rs = stmt.executeQuery("SELECT * FROM History");
                    while (rs.next()) {
                        String message = rs.getString("Text");
                        out.println(message);
                    }
                    rs.close();
                    stmt.close();
                    con.close();
                } catch (ClassNotFoundException se) {
                    se.printStackTrace();
                } catch (SQLException sqle) {
                    sqle.printStackTrace();
                }
            %>
        </textarea>
    </div>
    <div style="height: 13%; border: 1px solid; margin-top: 0.5%; padding: 3px">
        <form action="Chat.jsp" method="post">
            <textarea style="width: 100%; height: 80%" name="message"></textarea>
            <a href="delete.jsp"><button style="width: 10%; height: 20%; float:left" value="submit" type="button">Clear</button></a>
            <button style="width: 10%; height: 20%; float: right" value="submit" type="submit">Submit</button>
        </form>
    </div>
</div>
</body>
</html>
