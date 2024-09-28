<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<c:set var="cl" value="${ pageContext.request.contextPath }" />
<jsp:include page="/WEB-INF/common/header.jsp" />

	<main class="container mt-4">
        <div class="row">
        	<c:forEach var="board" items="${ AllBoard }">
        		<div class="col-md-6">
	        		<div class="card mb-4">
	        			<div class="card-body">
						    <h6 class="card-title">${ board.id }<a href="${ cl }/username/${ board.writer }">${ board.writer }</a></h6>
						    <h5>
						    	<a href="${ cl }/blog/blogview?title=${ board.title }&writer=${ board.writer }&blogcontent=${ board.blogcontent }">
						    		${ board.title }
						    	</a>
						    </h5>
						    <h5>
						    	<a href="${ cl }/blog/blogview?title=${ board.title }&writer=${ board.writer }&blogcontent=${ board.blogcontent }" class="card-text">
						    		${ board.blogcontent }
						    	</a>
						    </h5>
						</div>
	        		</div>
	        	</div>
        	</c:forEach>
        	<c:if test="${ empty AllBoard }">
        		<div class="container">
        			<h2 class="text-center">저장된 게시글 정보가 없습니다.</h2>
        		</div>
        	</c:if>
        </div>
    </main>

<jsp:include page="/WEB-INF/common/footer.jsp" />