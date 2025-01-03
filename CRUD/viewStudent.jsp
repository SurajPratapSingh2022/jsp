<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="connect.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Students</title>
</head>
<body>
    <h3>List of Students Registered</h3>
    <table width="100%" border="1">
        <tr>
            <th>SrNo</th>
            <th>StudentID</th>
            <th>Name</th>
            <th>Gender</th>
            <th>RollNo</th>
            <th>Semester</th>
            <th>Fee</th>
            <th>Delete</th>
            <th>Update</th>
        </tr>
        <%
            stmt = con.createStatement();
            int sr = 0;
            rs = stmt.executeQuery("SELECT * FROM student");
            while (rs.next()) {
                sr++;
        %>
        <tr>
            <td><%= sr %></td>
            <td><%= rs.getInt("sid") %></td>
            <td><%= rs.getString("name") %></td>
            <td><%= rs.getString("gender") %></td>
            <td><%= rs.getInt("rollno") %></td>
            <td><%= rs.getString("sem") %></td>
            <td><%= rs.getDouble("fee") %></td>
            <td>
                <a href="action.jsp?sid=<%= rs.getInt("sid") %>&action=Delete" 
                   onclick="return confirm('Are you sure to delete this record?')">
                    Delete
                </a>
            </td>
            <td>
                <a href="updateStudent.jsp?sid=<%= rs.getInt("sid") %>">
                    Update
                </a>
            </td>
        </tr>
        <%
            }
        %>
    </table>
</body>
</html>
