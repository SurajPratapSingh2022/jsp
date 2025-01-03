<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%!
    Connection con;
    Statement stmt;
    ResultSet rs;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Database Connection</title>
</head>
<body>
    <%
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/spsdb", "root", "system");
            out.println("Database Connected");
        } catch (Exception e) {
            out.println("Error: " + e.getMessage());
        }
    %>
</body>
</html>
