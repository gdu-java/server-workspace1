<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>ȸ�� ���� ���α׷�</h1>
	
	<a href="memberAdd.jsp">ȸ���߰�</a><br>
	<a href="/WebProject/memberListController">ȸ����Ϻ���</a>
	<form action="/WebProject/selectOneMember">
	<label for="id">���̵� �˻�</label><input type="text" name="userId">
	<input type="submit" value="�˻�">
	</form>
</body>
</html>