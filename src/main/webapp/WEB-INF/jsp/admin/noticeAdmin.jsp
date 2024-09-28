<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<c:set var="cl" value="${ pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>관리자 DB | notice</title>
	<style>table > tr, td { padding: 5px 10px; cursor: pointer; }</style>
</head>
<body>
	<h1>웹에서 DB 관리하기 위한 페이지 | 공지사항 글 출력</h1><br><hr><br>
	
	<div class="container">
		<table border="1" style="border-collapse: collapse;">
			<tr>
				<td>공지사항 제목</td>
				<td>공지사항 내용</td>
			</tr>
			<c:forEach var="noticeinfo" items="${ adminNoticeList }">
				<tr>
					<td>${ noticeinfo.noticetitle }</td>
					<td>${ noticeinfo.noticecontent}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>