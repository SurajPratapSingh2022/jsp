<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Hello! Suraj</h2>
	<%
		String name="my name is suraj";
		out.println(name);
	%>
	<%
		session.setAttribute("session_name","sps jsp session");
	%>
	<form action="implicitObjectOutput.jsp" method="get">
		<input type="text" name="name1" placeholder="Enter Name"/>
		<input type="submit" value="Click Me"/>
		
	</form>
</body>
</html>