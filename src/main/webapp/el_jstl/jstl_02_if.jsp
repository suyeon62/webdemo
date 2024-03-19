<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl_02_if</title>
</head>
<body>
<%
	int num=10;
	if(num%2==0)
		out.print("<p>even</p>");
	if(num%2==1)
		out.print("<p>odd</p>");
%>

<hr/>
<%--
	<c:if test="${조건식}" var="변수명" scope="범위">
		수행할 문장
	</c:if>
	var, scope는 생략할 수 있다.
	scope를 생략하면 기본값은 page이다.
 --%>

<c:set var="num" value="10" />
<c:if test="${num%2==0}">
	<%-- <p><c:out value="${'even'}"/></p> --%>
	<p>even</p>
</c:if>

<c:if test="${num%2==1}">
	<p>odd</p>
</c:if>
</body>
</html>