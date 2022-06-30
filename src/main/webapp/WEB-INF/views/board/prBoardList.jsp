<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TREND EATER</title>
<script src="${ pageContext.servletContext.contextPath }/resources/js/jquery-3.6.0.min.js"></script>
<!-- UIkit CSS -->
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/uikit/uikit.min.css" />


<!-- UIkit JS -->
<script src="https://cdn.jsdelivr.net/npm/uikit@3.14.3/dist/js/uikit.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/uikit@3.14.3/dist/js/uikit-icons.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" integrity="sha512-10/jx2EXwxxWqCLX/hHth/vu2KY3jCF70dCQB8TSgNjbCVAC/8vai53GfMDrO2Emgwccf2pJqxct9ehpzG+MTw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/assets/animate.css/animate.min.css" type="text/css" />
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/assets/glyphicons/glyphicons.css" type="text/css" />
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/assets/font-awesome/css/font-awesome.min.css" type="text/css" />
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/assets/material-design-icons/material-design-icons.css" type="text/css" />

<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/assets/bootstrap/dist/css/bootstrap.min.css" type="text/css" />
<!-- build:css ../assets/styles/app.min.css  -->
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/assets/styles/app.css" type="text/css" />
<!-- endbuild -->
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/assets/styles/font.css" type="text/css" />

<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">



</head>

<style>
.uk-breadcrumb>:nth-child(n+2):not(.uk-first-column)::before {
	margin: 0 5px 0 calc(5px - 4px) !important;
}

.uk-overlay-primary {
	background: rgba(34, 34, 34, 0.5) !important;
}

.uk-icon-link svg:hover path {
	fill: white !important;
	transition: all ease 0.5s !important;
}


</style>
<body>

	<c:import url="../common/menubar.jsp" />

	<div class="uk-container uk-margin-large">
		<div class="uk-cover-container">
			<img src="${ contextPath }/resources/images/cover1.jpg">
			<div class="uk-overlay-primary uk-position-cover"></div>
			<div class="uk-overlay uk-position-center uk-light uk-text-center">
				<h4 class="uk-h4 uk-text-center@s" id="requestEat">
					TREND EATER는 언제나 EATER님들의 의견을 기다리고 있습니다.<br> 도무지 찾을 수 없는, 경험해 보고 싶은 TREND FOODS<br> TREND EATER에게 맡겨보세요
				</h4>
				<a class="uk-button uk-button-default" href="#modal-overflow" uk-toggle>상품 요청</a>
				<div id="modal-overflow" uk-modal>
					<div class="uk-modal-dialog">
						<form action="requestProduct.bo" method="post" class="uk-form-stacked">
							<button class="uk-modal-close-default" type="button" uk-close></button>
							<div class="uk-modal-header">
								<h3 class="uk-h3 uk-text-bold">상품 요청</h3>
							</div>
							<div class="uk-modal-body" uk-overflow-auto>
								<div class="col-sm-12">
									<div class="md-form-group float-label">
										<input id="productNo_name" name = "productName" type="text" class="md-input">
										<label for="productNo_name">상품명</label>
									</div>
									<div class="md-form-group float-label">
										<input id="productNo_company" name = "manufacturer" type="text" class="md-input">
										<label for="prodctNo_company">제조사</label>
									</div>
								</div>
							</div>
							<div class="uk-modal-footer">
								<button class="uk-button uk-button-default uk-modal-close" type="button">취소</button>
								<button class="uk-button uk-button-primary" type="submit">요청</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<c:if test="${ empty list }">
		<div class="uk-align-center">
			<div class="uk-placeholder uk-text-center">상품이 준비중입니다.</div>
		</div>

	</c:if>


	<c:if test="${ !empty list }">
		<div class="uk-container uk-magin-large-top">
			<h2 class="uk-h2 uk-text-bolder uk-heading-bullet uk-text-center uk-margin-large">제품 및 리뷰 게시판</h2>
			<ul class="uk-breadcrumb uk-align-right">
				<li>
					<a href="">최신순</a>
				</li>
				<li>
					<a href="">리뷰순</a>
				</li>
				<li>
					<a href="">스크랩순</a>
				</li>
			</ul>
		</div>

		<div class="uk-container uk-margin-medium">
			<div class="uk-child-width-1-3@m" uk-grid uk-height-match="target: > div > .uk-card">


				<!--  너다 -->
				<c:forEach var="b" items="${ list }">
					<div class="productContent">
						<input type="hidden" class="product" name="productNo" value="${ b.productNo }">
						<div class="uk-card uk-card-default">
							<div class="uk-card-header">
								<div class="uk-width-expand">
									<h4 class="uk-card-title uk-text-bold uk-margin-top uk-margin-remove-bottom">${ b.productName }</h4>
									<div class="uk-card-badge">N</div>
								</div>
							</div>
							<div class="uk-card-media">
								<div class="uk-transition-toggle" tabindex="0">
									<c:forEach var="img" items="${ imgList }">
										<c:if test="${ img.identifyNo == b.productNo && img.fileType == 1 }">
											<img class="uk-transition-scale-up uk-transition-opaque" src="${ contextPath }/resources/productImgUploadFiles/${ img.changeName }" width="1800" height="1200" alt="상품사진">
										</c:if>
									</c:forEach>
								</div>
							</div>
							<hr class="uk-margin-remove-bottom">
							<div class="uk-card-body uk-padding-small">
								<P class="uk-text-meta uk-margin-remove-top">${ b.productOneLine }</P>
								<i class="fa-regular fa-heart"></i>
								<i class="fa-regular fa-comments"></i>
								<span class="uk-badge uk-text-top">100</span>
							</div>
						</div>
					</div>
				</c:forEach>

				<script type="text/javascript">
					$('.productContent').mouseenter(function() {
						$(this).css({
							'cursor' : 'pointer'
						});
					}).click(
							function() {
								var pno = $(this).children('input').val();
								console.log(pno);
								location.href = 'prbdetail.bo?pno=' + pno + "&page=" + ${ pi.currentPage };
							})
				</script>







			</div>
			<!-- 페이징 처리 -->
			<ul class="uk-pagination uk-flex-center uk-margin-medium-top" uk-margin>
				<c:if test="${ pi.currentPage <= 1 }">
					<li>
						<a href="#">
							<span uk-pagination-previous></span>
						</a>
					</li>
				</c:if>
				<c:if test="${ pi.currentPage > 1 }">
					<c:url var="before" value="prBoardList.bo">
						<c:param name="page" value="${ pi.currentPage -1 }" />
					</c:url>
					<li>
						<a href="${ before }">
							<span uk-pagination-previous></span>
						</a>
					</li>
				</c:if>

				<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
					<c:if test="${ p eq pi.currentPage }">
						<li class="uk-active">
							<span>${ p }</span>
						</li>
					</c:if>
					<c:if test="${p ne pi.currentPage }">
						<c:url var="pagination" value="prBoardList.bo">
							<c:param name="page" value="${ p }" />
						</c:url>
						<li>
							<a href="${ pagination }">${ p }</a>
						</li>
					</c:if>
				</c:forEach>

				<c:if test="${ pi.currentPage >= pi.maxPage }">
					<li>
						<a href="#">
							<span uk-pagination-next></span>
						</a>
					</li>
				</c:if>
				<c:if test="${ pi.currentPage < pi.maxPage }">
					<c:url var="after" value="prBoardList.bo">
						<c:param name="page" value="${ pi.currentPage + 1 }" />
					</c:url>
					<li>
						<a href="#">
							<span uk-pagination-next></span>
						</a>
					</li>
				</c:if>
			</ul>
			<!-- 페이징 처리 끝  -->
		</div>

	</c:if>

	<!-- build:js scripts/app.html.js -->
	<!-- jQuery -->
	<script src="${ pageContext.servletContext.contextPath }/resources/libs/jquery/jquery/dist/jquery.js"></script>
	<!-- Bootstrap -->
	<script src="${ pageContext.servletContext.contextPath }/resources/libs/jquery/tether/dist/js/tether.min.js"></script>
	<script src="${ pageContext.servletContext.contextPath }/resources/libs/jquery/bootstrap/dist/js/bootstrap.js"></script>
	<!-- core -->
	<script src="${ pageContext.servletContext.contextPath }/resources/libs/jquery/underscore/underscore-min.js"></script>
	<script src="${ pageContext.servletContext.contextPath }/resources/libs/jquery/jQuery-Storage-API/jquery.storageapi.min.js"></script>
	<script src="${ pageContext.servletContext.contextPath }/resources/libs/jquery/PACE/pace.min.js"></script>

	<script src="${ pageContext.servletContext.contextPath }/resources/scripts/config.lazyload.js"></script>

	<script src="${ pageContext.servletContext.contextPath }/resources/scripts/palette.js"></script>
	<script src="${ pageContext.servletContext.contextPath }/resources/scripts/ui-load.js"></script>
	<script src="${ pageContext.servletContext.contextPath }/resources/scripts/ui-jp.js"></script>
	<script src="${ pageContext.servletContext.contextPath }/resources/scripts/ui-include.js"></script>
	<script src="${ pageContext.servletContext.contextPath }/resources/scripts/ui-device.js"></script>
	<script src="${ pageContext.servletContext.contextPath }/resources/scripts/ui-form.js"></script>
	<script src="${ pageContext.servletContext.contextPath }/resources/scripts/ui-nav.js"></script>
	<script src="${ pageContext.servletContext.contextPath }/resources/scripts/ui-screenfull.js"></script>
	<script src="${ pageContext.servletContext.contextPath }/resources/scripts/ui-scroll-to.js"></script>
	<script src="${ pageContext.servletContext.contextPath }/resources/scripts/ui-toggle-class.js"></script>

	<script src="${ pageContext.servletContext.contextPath }/resources/scripts/app.js"></script>

	<!-- ajax -->
<%-- 	<script src="${ pageContext.servletContext.contextPath }/resources/libs/jquery/jquery-pjax/jquery.pjax.js"></script> --%>
	<script src="${ pageContext.servletContext.contextPath }/resources/scripts/ajax.js"></script>
	<!-- endbuild -->


</body>
</html>