<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>회원 관리 프로그램</h1>
	
	<a href="memberAdd.jsp">회원추가</a><br>
	<a href="/WebProject/memberListController">회원목록보기</a>
	<form action="/WebProject/selectOneMember">
	<label for="id">아이디 검색</label><input type="text" name="userId">
	<input type="submit" value="검색">
	</form>
</body>
</html>