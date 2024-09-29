<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<c:set var="cl" value="${ pageContext.request.contextPath }" />
<jsp:include page="/WEB-INF/common/header.jsp" />

	<main class="container mt-4">
        <div class="row">
        	<c:forEach var="board" items="${ AllBoard }">
        		<div class="col-md-6 blog-item">
	        		<div class="card mb-4">
	        			<div class="card-body">
						    <h6 class="card-title">${ board.id }<a href="${ cl }/username/${ board.writer }">${ board.writer }</a></h6>
						    <c:if test="${ not empty board.title }">
						    	<h5>
							    	<a href="${ cl }/blog/blogview?title=${ board.title }&writer=${ board.writer }">
							    		${ board.title }
							    	</a>
							    </h5>
						    </c:if>
						    <c:if test="${ empty board.title }">
						    	<h5>
						    		<a href="${ cl }/blog/blogview?title=${ board.title }&writer=${ board.writer }">
						    			글쓴이 알 수 없음
						    		</a>
							    </h5>
						    </c:if>
						    <!-- <h5>
						    	<a href="${ cl }/blog/blogview?title=${ board.title }&writer=${ board.writer }&blogcontent=${ board.blogcontent }" class="card-text">
						    		${ board.blogcontent }
						    	</a>
						    </h5> -->
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
        
		<div class="pagination" id="pagination-container">
			<button class="page-button" id="first-page">처음</button>
		    <button class="page-button" id="last-page">끝</button>
		    <!-- 페이지 버튼이 여기에 동적으로 추가됩니다. -->
		</div>
    </main>

<jsp:include page="/WEB-INF/common/footer.jsp" />