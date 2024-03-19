<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el_02_res</title>
</head>
<body>
<%
	//scriptlet
	String data=request.getParameter("data");
%>

<p><%=data%></p>

<%
	String[] chk=request.getParameterValues("chk");
	if(chk!=null){
		for(int i=0; i<chk.length; i++){
			%>
			<p><%=chk[i] %></p>
			<%
		}
	}
%>

<%
	String[] chk2=request.getParameterValues("chk");
	if(chk!=null){
		for(int i=0; i<chk2.length; i++){
			out.print("<p>"+chk2[i]+"</p>");
		}
	}
%>

<p>${param.data}</p>
<p>${paramValues.chk[0]}</p>
<p>${paramValues.chk[1]}</p>
<p>${paramValues.chk[2]}</p>
</body>
</html>