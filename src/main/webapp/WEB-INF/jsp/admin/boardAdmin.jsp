<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<c:set var="cl" value="${ pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>관리자 DB | board</title>
	<style>table > tr, td { padding: 5px 10px; cursor: pointer; }</style>
</head>
<body>
	<h1>웹에서 DB 관리하기 위한 페이지 | 게시글 정보 출력</h1><br><hr><br>
	
	<div class="container">
		<table border="1" style="border-collapse: collapse;">
			<tr>
				<td style="width: 75px;">번호</td>
				<td>게시글 제목</td>
				<td style="width: 150px;">게시글 작성자</td>
				<td>게시글 내용</td>
			</tr>
			<c:forEach var="boardinfo" items="${ adminBoardList }">
				<tr>
					<td>${ boardinfo.id }</td>
					<td>${ boardinfo.title }</td>
					<td>${ boardinfo.writer}</td>
					<td>${ boardinfo.blogcontent}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>
    	/*
    	"use strict";
    	$(document).ready(function() {
    		var maxLength = 20; // 최대 글자수 설정
    	    var blogText = $('.card-text');
    	    var originalText = blogText.text();

    	    // 글이 너무 길면 자르고 '...' 추가
    	    if (originalText.length > maxLength) {
    	    	var truncatedText = originalText.substring(0, maxLength) + '...';
    	        blogText.text(truncatedText);
    	    }
    	});
    	*/
    </script>
</body>
</html>