<%@page import="java.util.StringTokenizer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl_09_forTokens</title>
</head>
<body>
	<%
	StringTokenizer stn = new StringTokenizer("java/jsp,spring/", "/,");
	while(stn.hasMoreTokens())
		out.print("<p>" + stn.nextToken() +"</p>");
	%>
	
	<hr/>
	<c:forTokens items="${java/jsp,sping/}" delims="/," var="data">
		<p>${data}</p>
	</c:forTokens>
</body>
</html>