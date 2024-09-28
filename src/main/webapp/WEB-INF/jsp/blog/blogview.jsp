<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<c:set var="cl" value="${ pageContext.request.contextPath }" />
<jsp:include page="/WEB-INF/common/header.jsp" />

	<div class="container post-container" style="margin-top: 20px; padding: 20px;
		background-color: white; border-radius: 10px; box-shadow: 0px 0px 10px rgb(0, 0, 0.01);">
	    <h3 class="text-left">${title}</h3>
	    <p class="text-muted text-left">작성자: ${writer}</p>
	    <hr>
	    <div class="content">
	        <p>${blogcontent}</p>
	    </div>
	    <hr>
	    <div class="text-right">
	        <a href="${ cl }/blog" class="btn btn-primary">목록으로 돌아가기</a>
	    </div>
	</div>

<jsp:include page="/WEB-INF/common/footer.jsp" />