<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원 등록</h1>
	<form action="/WebProject/memberInsertController" method="post">
		<label for="name">이름</label>
		<input type="text" name="userName" id="name"><br>
		<label for="id">ID</label>
		<input type="text" name="userId" id="id"><br>
		<label for="pwd">패스워드</label>
		<input type="password" name="userPwd" id="pwd"><br>
		<input type="radio" name="gender" value="M">남
		<input type="radio" name="gender" value="F">여<br>
		<label for="age">나이</label>
		<input type="text" name="age" id="age"><br>
		<label for="email">이메일</label>
		<input type="email" name="email" id="email"><br>
		<label for="phone">전화번호</label>
		<input type="text" name="phone" id="phone"><br>
		<label for="address">주소</label>
		<input type="text" name="address" id="address"><br>
		<label for="hobby">취미</label>
		<input type="text" name="hobby" id="hobby"><br>
		<input type="submit" value="가입하기">
		<input type="reset" value="재입력">
		<a href="memberAdmin.jsp">메인으로 돌아가기</a>
	</form>
</body>
</html>