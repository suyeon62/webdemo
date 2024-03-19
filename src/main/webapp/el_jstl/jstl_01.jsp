<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl_01</title>
</head>
<body>
<%--
	<jsp:forward />
	<jsp:include />
	
	커스텀 태그(Custom Tag)
	1. jsp에서 사용할 수 있도록 사용자 정의 태그를 의미한다.
	2. jstl(JSP Standard Tag Library)은 jsp페이지에서 많이 사용되는
	   논리적인 판단, 반복문의 처리, 데이터베이스 등의 처리를 위한 표준 커스탬 태그이다.
 --%>
 
 <%
 	int data=20;
 %>
 
<!-- 변수 선언 -->
<c:set var="data" value="20" />
<p>${data}</p>

<!-- 변수 제거 -->
<c:remove var="data" />
<p>${data}</p>

</body>
</html>