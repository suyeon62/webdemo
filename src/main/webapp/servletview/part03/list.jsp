<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list</title>
</head>
<body>
	<a href="meminsert">글쓰기</a>
	<table>
		<thead>
			<tr>
				<th>번호</th><th>이름</th><th>나이</th><th>지역</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${requestScope.mem}" var="element">
				<tr>
					<td>${element.num}</td>
					<td>${element.name}</td>
					<td>${element.age}</td>
					<td>${element.loc}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>