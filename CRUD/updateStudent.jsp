<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Student</title>
</head>
<body>
    <%
        // Retrieve the student ID from the request
        int sid = Integer.parseInt(request.getParameter("sid"));

        // Variables to store student details
        String name = "", gender = "", semester = "";
        int rollno = 0;
        double fee = 0.0;

        // Fetch student details from the database
        try {
            stmt = con.createStatement();
            rs = stmt.executeQuery("SELECT * FROM student WHERE sid = " + sid);
            if (rs.next()) {
                name = rs.getString("name");
                gender = rs.getString("gender");
                rollno = rs.getInt("rollno");
                semester = rs.getString("sem");
                fee = rs.getDouble("fee");
            } else {
                out.println("<h3>Student not found!</h3>");
                return;
            }
        } catch (Exception e) {
            out.println("Error fetching student details: " + e.getMessage());
        }
    %>

    <h3>Update Student Details</h3>
    <form action="action.jsp" method="post">
        <!-- Hidden field to pass the student ID -->
        <input type="hidden" name="sid" value="<%= sid %>">

        <table>
            <tr>
                <td>Name:</td>
                <td><input type="text" name="name" value="<%= name %>" required></td>
            </tr>
            <tr>
                <td>Gender:</td>
                <td>
                    <input type="radio" name="gender" value="male" <%= gender.equals("male") ? "checked" : "" %>> Male
                    <input type="radio" name="gender" value="female" <%= gender.equals("female") ? "checked" : "" %>> Female
                </td>
            </tr>
            <tr>
                <td>Roll No.:</td>
                <td><input type="text" name="rollno" value="<%= rollno %>" required></td>
            </tr>
            <tr>
                <td>Semester:</td>
                <td><input type="text" name="semester" value="<%= semester %>" required></td>
            </tr>
            <tr>
                <td>Fee:</td>
                <td><input type="text" name="fee" value="<%= fee %>" required></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <button type="submit" name="action" value="updateStudent">Update</button>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
