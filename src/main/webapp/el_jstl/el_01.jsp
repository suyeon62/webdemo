<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el_01.jsp</title>
</head>
<body>
	<h3>주석처리</h3>
	<!-- html 주석 -->
	<%-- jsp 주석 --%>
	<%-- EL (Expression Language) : 표현언어
	1. JSP 스크립트를 대신해서 속성값을 편리하게 출력할 수 있도록 제공해주는 언어이다.
	2. ${ } 
	--%>

	<%
	//scope(영역) - 데이터를 참조할 수 있도록 제공해주는 공간
	//page-pageContext, request-request, session-session, application-application

	//page영역에 p1이름으로 page값이 저장된다.
  	pageContext.setAttribute("p1", "page");  //한 페이지
  
  	//request영역에 p2이름으로 request값이 저장된다. 
  	request.setAttribute("p2", "request"); //한 번의 호출
  
  	//session영역에 p3이름으로 session값이 저장된다.
  	session.setAttribute("p3", "session"); //하나의 클라이언트
  
  	//application영역에 p4이름으로 application값이 저장된다.
  	application.setAttribute("p4", "application"); //모든 클라이언트
	%>
	
	<p>
		<%= pageContext.getAttribute("p1") %>/<%= request.getAttribute("p2") %>/
		<%= session.getAttribute("p3") %>/<%= application.getAttribute("p4") %>
	</p>
	
	<p>
		${pageScope.p1}/${requestScope.p2}/${sessionScope.p3}/${applicationScope.p4}
	</p>
	
	<p>
		<!-- 
		속성값을 가져올 때 영역을 명시하지 않으면 page->request->session->application순으로 검색을 한다.
		-->
		${p3}
	</p>
</body>
</html>