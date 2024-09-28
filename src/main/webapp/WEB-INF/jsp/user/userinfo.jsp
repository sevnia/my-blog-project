<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<c:set var="cl" value="${ pageContext.request.contextPath }" />
<jsp:include page="/WEB-INF/common/header.jsp" />

	<div class="container mt-5">
		<h1>유저 정보</h1>
		<div class="card">
			<div class="card-body">
				<c:forEach var="Userinfo" items="${ Userinfo }">
					<h5 class="card-title">유저 이름: ${Userinfo.username}</h5>
				</c:forEach>
            </div>
		</div>
		<a href="${ cl }/" class="btn btn-primary mt-3">홈으로 돌아가기</a>
	</div>

<jsp:include page="/WEB-INF/common/footer.jsp" />