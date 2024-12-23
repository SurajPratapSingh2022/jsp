<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	String r,n;
%>
<%
	if(request.getParameter("result") != null){
		r=request.getParameter("result");
		n=request.getParameter("n");
	}
	else{
		r="";
		n="";
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP Redirect Response</title>
</head>
<body>
	<h1>Check Palindrome or not</h1>
	<form name="frm" method="post" action="palinShow2.jsp">
	<table border="1" width="50%">
		<tr>
			<td>Enter a number</td><td><input type="text" name="t1" value="<%= n %>" required></td>
			
			<!-- <td>Enter a number</td><td><input type="text" name="t1" value="<% out.println("n"); %>" required></td> -->
		</tr>
		<tr>
			<td colspan="2" align="center"><input type="submit" name="submit" value="submit"></td>
		</tr>
	</table>
	</form>
	<%=
		r
	%>
</body>
</html>