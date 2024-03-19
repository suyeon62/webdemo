<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl_10_import</title>
</head>
<body>
<%--
	<jsp:include />액션태그와 같은 기능을 처리한다.
	a.jsp
	<p>start</p>
		<jsp:include page="b.jsp" />
	<p>korea</p>
	
	b.jsp
	<p>korea</p>
 --%>
 
 <p>before</p>
 	<c:import url="jstl_10_top.jsp">
 		<c:param name="data" value="10" />
 	</c:import>
 <p>after</p>
</body>
</html>