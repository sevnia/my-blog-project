<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<c:set var="cl" value="${ pageContext.request.contextPath }" />
<jsp:include page="/WEB-INF/common/header.jsp" />

	<div class="container my-4">
	    <div class="row">
	        <div class="col-5 mx-auto">
	            <h2 class="text-center mb-4">회원가입하기</h2>
	            <form action="/insert" method="post" autocomplete="off">
	                <div class="mb-3">
	                    <label for="username" class="form-label">사용할 아이디</label>
	                    <input type="text" class="form-control" name="username" id="username" placeholder="아이디" required>
	                </div>
	                <div class="mb-3">
	                    <label for="useremail" class="form-label">사용할 이메일</label>
	                    <input type="email" class="form-control" name="useremail" id="useremail" placeholder="이메일" required>
	                </div>
	                <div class="mb-3">
	                    <label for="userpassword" class="form-label">사용할 비밀번호</label>
	                    <input type="password" class="form-control" name="userpassword" id="userpassword" placeholder="비밀번호" required>
	                </div>
	                <button type="submit" class="btn btn-primary w-100">회원가입</button>
	                <a href="${ cl }/" class="btn btn-dark w-100 mt-2">돌아가기</a>
	            </form>
	        </div>
	    </div>
	</div>

<jsp:include page="/WEB-INF/common/footer.jsp" />