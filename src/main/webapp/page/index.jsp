<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="<c:url value='/css/tale/xcode.min.css'/>" rel="stylesheet">
<link href="<c:url value='/css/tale/style.min.css'/>" rel="stylesheet">
<script src="<c:url value='/js/jquery-1.7.2.js'/>"></script>
</head>
<jsp:include page="/page/header.jsp" />
<div class="main-content index-page clearfix">
	<div class="post-lists">
		<div class="post-lists-body">
			<c:forEach items="${items }" var="item">
				<c:if test="${currentPage==null }">
					<c:set value="${item }" var="currentPage" />
				</c:if>

				<div class="post-list-item">
					<div class="post-list-item-container">
						<div class="item-thumb bg-deepgrey"
							style="background-image:url(${item.cover});"></div>
						<a
							href="/${item.childcategory.category.mark }/${item.childcategory.mark}/${item.addr}.html">
							<div class="item-desc">
								<p>兴趣使然的无名小站o(*≧▽≦)ツ</p>
							</div>
						</a>
						<div class="item-slant reverse-slant bg-deepgrey"></div>
						<div class="item-slant"></div>
						<div class="item-label">
							<div class="item-title">
								<a
									href="/${item.childcategory.category.mark }/${item.childcategory.mark}/${item.addr}.html">${item.name}</a>
							</div>
							<div class="item-meta clearfix">
								<div class="item-meta-ico bg-ico-image"
									style="background: url(/templates/themes/default/static/img/bg-ico.png) no-repeat; background-size: 40px auto;"></div>
								<div class="item-meta-cat">
									<a
										href="/${item.childcategory.category.mark }/${item.childcategory.mark}">${item.childcategory.name
										}</a>
								</div>
							</div>
						</div>

					</div>
				</div>
			</c:forEach>

		</div>
	</div>

	<c:if test="${pageNum!=null }">
		<div class="lists-navigator clearfix">
			<ol class="page-navigator">
				
				
				
				
				<c:if test="${currentPageNum>=4 }">
					<c:forEach begin="${currentPageNum-2 }" end="${currentPageNum-1 }" var="num">
							<li><a
								href="/${currentPage.childcategory.category.mark }/${currentPage.childcategory.mark}/${num}">${num}</a></li>
					</c:forEach>
					<li class="current"><a
						href="javascript:void(0)">${currentPageNum }</a>
					</li>
					<c:forEach begin="${currentPageNum+1 }" end="${currentPageNum+2 }" var="num">
						<c:if test="${num<=pageNum }">
							<li><a
								href="/${currentPage.childcategory.category.mark }/${currentPage.childcategory.mark}/${num}">${num}</a></li>
						</c:if>
							
					</c:forEach>
				</c:if>
				
				<c:if test="${currentPageNum<4 }">
					<c:if test="${(currentPageNum-2)>1 || (currentPageNum-1)>1  }">
						<c:forEach begin="${currentPageNum-2 }" end="${currentPageNum-1 }" var="num">
							<li><a
								href="/${currentPage.childcategory.category.mark }/${currentPage.childcategory.mark}/${num}">${num}</a></li>
						</c:forEach>
					</c:if>
					
					<li class="current"><a
						href="javascript:void(0)">${currentPageNum }</a>
					</li>
					
					<c:forEach begin="${currentPageNum+1 }" end="${currentPageNum+2 }" var="num">
						<c:if test="${num<=pageNum }">
							<li><a
								href="/${currentPage.childcategory.category.mark }/${currentPage.childcategory.mark}/${num}">${num}</a></li>
						</c:if>
							
					</c:forEach>
					
				</c:if>
				
				
				

				<c:if test="${currentPageNum+1<=pageNum }">
					<li class="next"><a href="/${currentPage.childcategory.category.mark }/${currentPage.childcategory.mark}/${currentPageNum+1}">→</a></li>
				</c:if>
				
				<li class="next"><input type="text" />
					<button>跳转1</button></li>
				<li><a>共有美女：${itemCount }枚/${pageNum }页</a></li>
			</ol>
		</div>
	</c:if>

</div>
<jsp:include page="/page/footer.jsp" />

<script src="<c:url value='/js/tale/headroom.min.js'/>"></script>
<script src="<c:url value='/js/tale/highlight.min.js'/>"></script>
<script src="<c:url value='/js/tale/instantclick.min.js'/>"></script>