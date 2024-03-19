<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<fieldset>
    <legend>로그인</legend>
    <form method='post' action='loginPro'>
       <input type='text' name='fid' placeholder='아이디 입력' />
       <input type='password' name='fpass' placeholder='비밀번호 입력' />
       <input type='submit' value='로그인' />
    </form>
  </fieldset>

</body>
</html>