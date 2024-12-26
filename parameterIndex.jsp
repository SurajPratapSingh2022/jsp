<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Calculator</h1>
	<form action="servlet1" method="post">
		<label>Enter 1st No:</label><br><input type="number" name="num1"><br><br>
		<label>Enter 2nd No:</label><br><input type="number" name="num2"><br><br>
		<button type="submit">Go to Servlet 1 for sum</button>
	</form>
</body>
</html>