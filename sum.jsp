<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%!
	int a,b,c;
	int sum(int x, int y){
		return (x+y);
	}
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		a=100;	b=200;	c=sum(a,b);
	%>
	<p>value of a =<%=a%>and value of b=<%=b %></p>
	<p>sum=<%=c %></p>
</body>
</html>