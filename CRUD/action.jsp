<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="connect.jsp" %>
<%! String action, msg; %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action</title>
</head>
<body>
    <%
        action = request.getParameter("action");
    %>

    <!-- Code to Save Student Registration -->
    <%
        if (action != null && action.equals("saveReg")) {
            String name = request.getParameter("name");
            String gender = request.getParameter("gender");
            int rollno = Integer.parseInt(request.getParameter("rollno"));
            String sem = request.getParameter("semester");
            double fee = Double.parseDouble(request.getParameter("fee"));

            String sql = "INSERT INTO student(name, gender, rollno, sem, fee) VALUES(?, ?, ?, ?, ?)";
            try (PreparedStatement pstmt = con.prepareStatement(sql)) {
                pstmt.setString(1, name);
                pstmt.setString(2, gender);
                pstmt.setInt(3, rollno);
                pstmt.setString(4, sem);
                pstmt.setDouble(5, fee);
                pstmt.executeUpdate();
                msg = "Student Registered Successfully";
            } catch (SQLException e) {
                msg = "Error: " + e.getMessage();
            }

            response.sendRedirect("register.jsp?msg=" + msg);
        }
    %>

    <!-- Code for Deleting Student Record -->
    <%
        if (action != null && action.equals("Delete")) {
            int sid = Integer.parseInt(request.getParameter("sid"));
            String sql = "DELETE FROM student WHERE sid = ?";
            try (PreparedStatement pstmt = con.prepareStatement(sql)) {
                pstmt.setInt(1, sid);
                pstmt.executeUpdate();
                msg = "Delete Record Successfully";
            } catch (SQLException e) {
                msg = "Error: " + e.getMessage();
            }

            response.sendRedirect("viewStudent.jsp?msg=" + msg);
        }
    %>
    
    <!-- Code for Updating Student Record -->
    <%
    if (action.equals("updateStudent")) {
            try {
                int sid = Integer.parseInt(request.getParameter("sid"));
                String name = request.getParameter("name");
                String gender = request.getParameter("gender");
                int rollno = Integer.parseInt(request.getParameter("rollno"));
                String semester = request.getParameter("semester");
                double fee = Double.parseDouble(request.getParameter("fee"));

                stmt = con.createStatement();
                stmt.executeUpdate("UPDATE student SET name = '" + name + "', gender = '" + gender + "', rollno = " + rollno + ", sem = '" + semester + "', fee = " + fee + " WHERE sid = " + sid);
                msg = "Student record updated successfully!";
                response.sendRedirect("viewStudent.jsp?msg=" + msg);
            } catch (Exception e) {
                msg = "Error: " + e.getMessage();
                response.sendRedirect("viewStudent.jsp?msg=" + msg);
            }
        }
    %>
</body>
</html>
