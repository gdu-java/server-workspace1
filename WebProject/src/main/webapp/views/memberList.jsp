<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.goodee.model.vo.*, java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1> 회원 목록 </h1>
<%
	ArrayList<memberVo> list = (ArrayList<memberVo>)request.getAttribute("list");
	
%>


<table border="1">
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
	<% 	for(memberVo m : list){ %>
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
</table>
	<a href="views/memberAdmin.jsp">메인으로 돌아가기</a>

</body>
</html>