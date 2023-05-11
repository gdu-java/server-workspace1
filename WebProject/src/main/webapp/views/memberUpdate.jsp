<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.goodee.model.vo.*" %>    

<%
    MemberVo m = (MemberVo)request.getAttribute("member");
    %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원 정보 변경</h1>
	<form action="/WebProject/updateMember" method="post">
	<input type="hidden" name="userId" value="<%= m.getUserId() %>">
	<table>
		<tr>
			<td>아이디 :</td>
			<td><%= m.getUserId() %></td>
			
		</tr>
		<tr>
			<td>이름</td>
			<td><%= m.getUserName() %></td>
		</tr>
		<tr>
			<td>성별</td>
			<td><%= m.getGender() %></td>
		</tr>
		<tr>
			<td>나이</td>
			<td><%= m.getAge() %></td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><input type="email" name="email" value="<%= m.getEmail() %>" ></td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td><input type="phone" name="phone" value="<%= m.getPhone() %>"></td>
		</tr>
		<tr>
			<td>주소</td>
			<td><input type="address" name="address" value="<%= m.getAddress() %>"></td>
		</tr>
		<tr>
			<td>취미</td>
			<td><%= m.getHobby() %></td>
		</tr>
		<tr>
			<td>
				<input type="submit" value="회원정보 변경">
			</td>
		</tr>	
		<tr>		
			<td>
				<a href="views/memberAdmin.jsp">메인으로 돌아가기</a>
			</td>
		</tr>

	</table>	
	</form>
</body>
</html>