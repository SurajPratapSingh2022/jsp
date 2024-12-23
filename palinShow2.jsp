<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	int n,n1,r,a;
	String result;
%>
<%
	n=Integer.parseInt(request.getParameter("t1"));
	n1=n;
	r=0;
	while(n1 > 0){
		a=n1 % 10;
		r=r*10+a;
		n1=n1/10;
	}
	if(r==n)
		result="Your Number is Palindrome";
	else
		result="Your Number is not Palindrome";
	response.sendRedirect("palinIndex2.jsp?result="+result+"&n="+n);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>