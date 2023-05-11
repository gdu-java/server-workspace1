<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.goodee.model.vo.*, java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table {
		border-collapse: collapse;
	}
	td {
		border: 1px solid black;
	}
</style>
</head>
<body>
	<h1 align="center"> 회원 목록 </h1>
<%
request.setCharacterEncoding("utf-8");
	ArrayList<MemberVo> list = (ArrayList<MemberVo>)request.getAttribute("list");
%>


<table style="border: 1px solid black;margin-left:auto;margin-right:auto">
	<tr>
		<td>아이디</td>
		<td>이름</td>
		<td>주소</td>
		<td>성별</td>
		<td>이메일</td>
		<td>전화번호</td>
		<td>취미</td>
		<td>가입일</td>
	</tr>
	<%
	for(MemberVo m : list){
	%>
	<tr>
		<td> <%= m.getUserId() %> </td>
		<td> <%= m.getUserName() %></td>
		<td> <%= m.getAddress() %></td>
		<td> <%= m.getGender() %></td>
		<td> <%= m.getEmail() %></td>
		<td> <%= m.getPhone() %></td>
		<td> <%= m.getHobby() %></td>
		<td> <%= m.getEnroll_date() %></td>
	</tr>
	<% 	} %>
	<tr>
		<td colspan="8" align="center">
			<a href="views/memberAdmin.jsp">메인으로 돌아가기</a>
		</td>	
	</tr>
</table>


</body>
</html>