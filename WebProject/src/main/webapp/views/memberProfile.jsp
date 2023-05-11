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
	<h1>회원 정보</h1>
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
			<td><%= m.getEmail() %></td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td><%= m.getPhone() %></td>
		</tr>
		<tr>
			<td>주소</td>
			<td><%= m.getAddress() %></td>
		</tr>
		<tr>
			<td>취미</td>
			<td><%= m.getHobby() %></td>
		</tr>
		<tr>
			<td>
				<a href="/WebProject/updateMember?userId=<%= m.getUserId() %>">회원정보 변경</a>
			</td>
			<td>
			<form action="/WebProject/deleteMember">
				<input type="hidden" name="userId" value="<%= m.getUserId() %>">
				<input type="submit" value="회원탈퇴">
			</form>	
			</td>
		</tr>
		<tr>			
			<td colspan="2">
				<a href="views/memberAdmin.jsp">메인으로 돌아가기</a>
			</td>
		</tr>
	</table>
	
</body>
</html>