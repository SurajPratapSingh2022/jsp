<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="java.util.*" %>
<%@page session="false" %>
<%@page isELIgnored="false" %>
<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Hello World</h1>
	<%--<h1>Declaration Tag: </h1>
	<%!
	int a=10;
	String name="sps";
	
	%>
	<h1>
		Expression Tag:
		<%= a %>
		<%= name %>
	</h1>
	<%
		int sum=20+30;
		
		int sub=sum-10;
	%>
	<h1 style="color:red">Sum=<%= sum %></h1>
	<h1>Sub=<%= sub %></h1> --%>
	
	<%@include file="directiveHeader.jsp" %>
	
	<h1>
		Time:<%= new Date().toString() %>
	</h1>

</body>
</html>