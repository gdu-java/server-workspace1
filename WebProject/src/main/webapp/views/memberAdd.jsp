<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>ȸ�� ���</h1>
	<form action="/WebProject/memberInsertController" method="put">
		<label for="name">�̸�</label>
		<input type="text" name="memberName" id="name"><br>
		<label for="id">ID</label>
		<input type="text" name="memberId" id="id"><br>
		<label for="pwd">�н�����</label>
		<input type="password" name="userPwd" id="pwd"><br>
		<input type="radio" name="gender" value="M">��
		<input type="radio" name="gender" value="F">��<br>
		<label for="age">����</label>
		<input type="text" name="age" id="age"><br>
		<label for="email">�̸���</label>
		<input type="email" name="email" id="email"><br>
		<label for="phone">��ȭ��ȣ</label>
		<input type="text" name="phone" id="phone"><br>
		<label for="address">�ּ�</label>
		<input type="text" name="address" id="address"><br>
		<label for="hobby">���</label>
		<input type="text" name="hobby" id="hobby"><br>
		<input type="submit" value="�����ϱ�">
		<input type="reset" value="���Է�">
		<a href="memberAdmin.jsp">�������� ���ư���</a>
	</form>
</body>
</html>