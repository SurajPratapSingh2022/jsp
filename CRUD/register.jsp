<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Registration</title>
</head>
<body>
    <h3>New Registration</h3>
    <form action="action.jsp" name="frm" method="post">
        <table width="50%" border="1">
            <tr>
                <td>Name</td>
                <td><input type="text" name="name" required>
                <input type="hidden" name="action" value="saveReg"></td>
            </tr>
            <tr>
                <td>Gender</td>
                <td><input type="radio" name="gender" value="male" checked>Male<input type="radio" name="gender" value="female">Female</td>
            </tr>
            <tr>
                <td>Roll No.</td>
                <td><input type="text" name="rollno"></td>
            </tr>
            <tr>
                <td>Semester</td>
                <td><input type="text" name="semester"></td>
            </tr>
            <tr>
                <td>Fee</td>
                <td><input type="text" name="fee" required></td>
            </tr>
            <tr><td colspan="2" align="center"><input type="submit" name="Submit" value="submit"></td></tr>
        </table>
    </form>
</body>
</html>
