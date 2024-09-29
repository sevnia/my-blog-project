<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<c:set var="cl" value="${ pageContext.request.contextPath }" />
<jsp:include page="/WEB-INF/common/header.jsp" />

	<div class="container mt-5">
		<h2 class="mb-4">유저 정보</h2>
		<div class="card">
			<div class="card-body">
				<c:if test="${ not empty Userinfo }" >
					<c:forEach var="Userinfo" items="${ Userinfo }">
						<h5 class="card-title">유저 이름: ${Userinfo.username}</h5>
					</c:forEach>
				</c:if>
				<c:if test="${ empty Userinfo }">
					<c:forEach var="Userinfo" items="${ Userinfo }">
						<h5 class="card-title">로그인을 하지 않았습니다.</h5>
					</c:forEach>
				</c:if>
            </div>
		</div>
		<a href="${ cl }/" class="btn btn-primary mt-3">홈으로 돌아가기</a>
	</div>

<jsp:include page="/WEB-INF/common/footer.jsp" />