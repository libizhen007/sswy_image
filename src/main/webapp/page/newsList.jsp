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
			<c:forEach items="${newsList }" var="news">
				<div class="post-list-item">
					<div class="post-list-item-container">
						<div class="item-thumb bg-deepgrey"
							style="background-image:url(${news.cover});"></div>
						<a href="/news/${news.id}.html">
							<div class="item-desc">
								<p>兴趣使然的无名小站o(*≧▽≦)ツ</p>
							</div>
						</a>
						<div class="item-slant reverse-slant bg-deepgrey"></div>
						<div class="item-slant"></div>
						<div class="item-label">
							<div class="item-title">
								<a href="/news/${news.id}.html">${news.name}</a>
							</div>
							<div class="item-meta clearfix">
								<div class="item-meta-ico bg-ico-image"
									style="background: url(${news.cover}) no-repeat;background-size: 40px auto;"></div>
								<div class="item-meta-cat">
									<a href="/news/">新闻</a>
								</div>
							</div>
						</div>

					</div>
				</div>
			</c:forEach>

		</div>
	</div>

	<div class="lists-navigator clearfix">
		<ol class="page-navigator">

			<li class="current"><a href="https://tale.biezhi.me/page/1">1</a></li>
			<li><a href="https://tale.biezhi.me/page/2">2</a></li>

			<li class="next"><a href="https://tale.biezhi.me/page/2">→</a></li>
		</ol>
	</div>
</div>
<jsp:include page="/page/footer.jsp" />

<script src="<c:url value='/js/tale/headroom.min.js'/>"></script>
<script src="<c:url value='/js/tale/highlight.min.js'/>"></script>
<script src="<c:url value='/js/tale/instantclick.min.js'/>"></script>