<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Arithmetic</title>
</head>
<body>
	<h1>Arithmetic Operation</h1>
	<form name="frm" method="post" action="arithShow.jsp">
		<table border="1" width="50%">
			<tr>
				<td>First No.</td><td><input type="text" name="t1" required></td>
			</tr>
			<tr>
				<td>Second No.</td><td><input type="text" name="t2" required></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" name="submit" value="Submit"></td>
			</tr>
		</table>
	</form>
</body>
</html>
