<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home</title>
</head>
<body>
    <%
        String myname = (String) session.getAttribute("nameKey");
        if (myname == null) {
            response.sendRedirect("index.jsp");
            return;
        }
    %>
    <h3>Welcome: <%= myname %></h3>
    <a href="profile.jsp">Profile</a>&nbsp;&nbsp;
    <a href="about.jsp">About</a>
</body>
</html>
