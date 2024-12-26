<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Login Page</h1>
	<table>
		<form action="login" method="post">
			<tr>
				<td>Enter Email Id</td>
				<td><input type="text" name="name1"></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="pass1"></td>
			</tr>
			<tr>
				<td colspan="2" style="text-align: center;">
					<input type="submit" value="Login">
				</td>
			</tr>
		</form>
	</table>
</body>
</html>