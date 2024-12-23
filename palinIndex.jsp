<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	String r;
%>
<%
	if(request.getParameter("result") != null){
		r=request.getParameter("result");
	}
	else{
		r="";
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
	<form name="frm" method="post" action="palinShow.jsp">
	<table border="1" width="50%">
		<tr>
			<td>Enter a number</td><td><input type="text" name="t1" required></td>
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