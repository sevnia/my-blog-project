<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<c:set var="cl" value="${ pageContext.request.contextPath }" />
<jsp:include page="/WEB-INF/common/header.jsp" />

	<!-- Main Content -->
    <main class="container mt-4">
        <div class="row">

            <!-- 최근 뉴스 섹션 -->
            <div class="col-md-8">
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item active"><img class="d-block w-100" src="/img/img-1.jpg" alt="First slide"></div>
                        <div class="carousel-item"><img class="d-block w-100" src="/img/img-2.jpg" alt="Second slide"></div>
                        <div class="carousel-item"><img class="d-block w-100" src="/img/img-3.jpg" alt="Third slide"></div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
                <br>
                <c:forEach var="board" items="${ mainPageAllBoard }">
                	<div class="card shadow-sm border rounded">
	                    <div class="card-body">
	                        <h5 class="card-title">
	                        	<a href="${ cl }/blog/blogview?title=${ board.title }&writer=${ board.writer }&blogcontent=${ board.blogcontent }">
	                        		${ board.title }
	                        	</a>
	                        </h5>
	                        <h6 class="card-subtitle mb-2 text-muted">${ board.writer } <br> ${ board.formatDateSave }</h6>
	                    </div>
	                </div>
                </c:forEach>
            </div>  <!-- col-md-8 -->

            <!-- 공지사항 및 프로모션 섹션 -->
            <div class="col-md-4">
                <div class="card shadow-sm border rounded notice">
                    <div class="card-body">
                    	<c:if test="${ not empty loginuser }">
                    		<h5><a href="${ cl }/username/${ loginuser.username }">${ loginuser.username }님</a></h5>
                    		<p style="font-size: large;">${ loginuser.useremail }</p><hr>
                    		<h5><a href="#">공지사항</a></h5><hr>
	                        <h5><a href="#">프로모션</a></h5>
                    	</c:if>
                    	<c:if test="${ empty loginuser }">
                    		<a href="${ cl }/signin"><button type="button" class="btn btn-primary btn-block my-1">로그인</button></a>
	                        <a href="${ cl }/signup"><button type="button" class="btn btn-dark btn-block">회원가입</button></a><hr>
	                        <h5><a href="#">공지사항</a></h5><hr>
	                        <h5><a href="#">프로모션</a></h5>
                    	</c:if>
                    </div>
                </div>
            </div>

        </div>
    </main>

<jsp:include page="/WEB-INF/common/footer.jsp" />