<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl_06_forEach</title>
</head>
<body>
	<%
	for(int i = 1; i<= 5; i++)
		   out.print("<p>" + i + "</p>");
	%>

<hr/>
<c:forEach var="i" begin="1" end="5" step="1">
	<p>${i}</p>
</c:forEach>
</body>
</html>