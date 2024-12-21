<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%!
	int x,y,z,z1,z2,z3;
%>
<%
	x=Integer.parseInt(request.getParameter("t1"));
	y=Integer.parseInt(request.getParameter("t2"));
	z=x+y;
	z1=x-y;
	z2=x*y;
	z3=x/y;
%>
<p>x=<%=x %></p>
<p>y=<%=y %></p>
<p>sum=<%=z %></p>
<p>substraction=<%=z1 %></p>
<p>multiply=<%=z2 %></p>
<p>division=<%=z3 %></p>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>