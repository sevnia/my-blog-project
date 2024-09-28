<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<c:set var="cl" value="${ pageContext.request.contextPath }" />
<jsp:include page="/WEB-INF/common/header.jsp" />

	<div class="container text-center" style="margin-top: 50px;">
	    <h1>웹 페이지 소개</h1>
	    <p class="lead">기본적인 curd 블로그 페이지 (댓글 기능과 추천 같은 기능은 DB 설계를 할 때 잘못함)</p>
	</div>

<jsp:include page="/WEB-INF/common/footer.jsp" />