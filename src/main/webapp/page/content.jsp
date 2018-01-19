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

<article class="main-content page-page" itemscope=""
	itemtype="http://schema.org/Article">
<div class="post-header">
	<h1 class="post-title" itemprop="name headline">
		<a href="/${item.childcategory.category.mark }/${item.childcategory.mark }/${item.addr}.html">${item.name }</a>
	</h1>
	<div class="post-data">
		<time datetime=${item.time } itemprop="datePublished">发布于
		${item.time }</time>
		/ <a href="/${item.childcategory.category.mark }/${item.childcategory.mark }/">${item.childcategory.name }</a> /
		<a href="#comments">17 条评论</a> / 8663浏览
	</div>
</div>
<div id="post-content" class="post-content" itemprop="articleBody">
	<p class="post-tags">
		<a href="javascript:void(0)">标签</a><a href="javascript:void(0)">world</a>
		<a href="javascript:void(0)">高清</a><a href="javascript:void(0)">美女</a>
	</p>
	<h2 id="directory0220000864555189861">兴趣使然的无名小站</h2>
	<blockquote>
		<p>${item.download }</p>
	</blockquote>
	<hr>
	图片区域
	<img src="${item.cover} "/>


		<div class="recommend post-info">
		<h2 id="directory0220000864555189861">个性推荐</h2>
			<a href="/">
				<img src="http://www.dilidili.wang/uploads/allimg/171116/290_1052326421.jpg" />
			</a>
			<a href="/">
				<img src="http://www.dilidili.wang/uploads/allimg/171116/290_1052326421.jpg" />
			</a>
			<a href="/">
				<img src="http://www.dilidili.wang/uploads/allimg/171116/290_1052326421.jpg" />
			</a>
		</div>
		

    
</div>
</article>

<div id="15" class="comment-container">
    <div id="comments" class="clearfix">
        <span class="response"></span>

        <form method="post" id="comment-form" class="comment-form" role="form" onsubmit="return TaleComment.subComment();">
            <input type="hidden" name="coid" id="coid">
            <input type="hidden" name="cid" id="cid" value="15">
            <input type="hidden" name="csrf_token" value="Z9MraomhH8H8cxBZDBVb10">
            <input name="author" maxlength="12" id="author" class="form-control input-control clearfix" placeholder="姓名 (*)" value="" required="">
            <input type="email" name="mail" id="mail" class="form-control input-control clearfix" placeholder="邮箱 (*)" value="" required="">
            <input type="url" name="url" id="url" class="form-control input-control clearfix" placeholder="网址 (http://)" value="">
            <textarea name="content" id="textarea" class="form-control" placeholder="基佬，留下你的评论." required="" minlength="5" maxlength="2000"></textarea>
            <button class="submit" id="misubmit">提交</button>
        </form>
    </div>
</div>

<jsp:include page="/page/footer.jsp" />