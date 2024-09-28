<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<c:set var="cl" value="${ pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>관리자 DB | user</title>
	<style>table > tr, td { padding: 5px 10px; cursor: pointer; }</style>
</head>
<body>
	<h1>웹에서 DB 관리하기 위한 페이지 | 유저 정보 출력</h1><br><hr><br>
	
	<div class="container">
		<table border="1" style="border-collapse: collapse;">
			<tr>
				<td>유저 이름</td>
				<td>유저 이메일</td>
				<td>해당 유저 비밀번호</td>
			</tr>
			<c:forEach var="userinfo" items="${ adminUserList }">
				<tr>
					<td>${ userinfo.username }</td>
					<td>${ userinfo.useremail }</td>
					<td>${ userinfo.userpassword }</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>