<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<c:set var="cl" value="${ pageContext.request.contextPath }" />
<jsp:include page="/WEB-INF/common/header.jsp" />

	<div class="container post-container" style="margin-top: 20px; padding: 20px;
		background-color: white; border-radius: 10px;">
	    <h3 class="text-left">${blogboard.title}</h3>
	    <p class="text-muted text-left">작성자: ${blogboard.writer}</p>
	    <div class="content">
	        <p>${blogboard.blogcontent}</p>
	    </div>
	    <div class="text-right">
	        <a href="${ cl }/blog" class="btn btn-primary">목록으로 돌아가기</a>
	    </div>
	</div>

<jsp:include page="/WEB-INF/common/footer.jsp" />