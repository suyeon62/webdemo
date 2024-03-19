<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl_05_choose</title>
</head>
<body>
	<%
	char data = 'a';
	if(data>='A' && data<='Z' )
		out.print("대문자");
	else if(data>='a' && data<='z')
		out.print("소문자");
	else if(data>='0' && data<='9')
		out.print("숫자");
	else
		out.print("특수문자");
	%>
	
<hr/>
<c:set var="data" value="a" />
<c:choose>
	<c:when test="${data>='A' && data<='Z'}">
		<%-- <p><c:out value="대문자"/></p> --%>
		<p>대문자</p>
	</c:when>
	<c:when test="${data>='a' && data<='z'}">
		<p>소문자</p>
	</c:when>
	<c:when test="${data>='0' && data<='9'}">
		<p>숫자</p>
	</c:when>
	<c:otherwise>
		<p>특수문자</p>
	</c:otherwise>
</c:choose>
</body>
</html>