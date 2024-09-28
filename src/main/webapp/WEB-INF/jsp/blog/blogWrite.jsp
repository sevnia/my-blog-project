<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<c:set var="cl" value="${ pageContext.request.contextPath }" />
<jsp:include page="/WEB-INF/common/header.jsp" />

	<div class="container mt-5">
        <h2 class="mb-4">블로그 글 작성</h2>
        <form action="/insertBoard" method="post">
        	<div class="mb-3">
                <label for="writer" class="form-label">작성자</label>
                <input type="text" class="form-control" id="writer" name="writer" required="required" readonly="readonly" value="${ loginuser.username }">
            </div>
            <div class="mb-3">
                <label for="title" class="form-label">제목</label>
                <input type="text" class="form-control" id="title" name="title" required="required">
            </div>
            <div class="mb-3">
                <label for="blogcontent" class="form-label">내용</label>
                <textarea class="form-control" id="blogcontent" name="blogcontent" rows="8" required="required" style="resize: none;"></textarea>
            </div>
            <button type="submit" class="btn btn-primary">작성하기</button>
            <a href="${ cl }/"><button type="button" class="btn btn-light">돌아가기</button></a>
        </form>
    </div>

<jsp:include page="/WEB-INF/common/footer.jsp" />