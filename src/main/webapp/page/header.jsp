<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
    <meta name="renderer" content="webkit">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta http-equiv="Cache-Control" content="no-transform">
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <meta name=keywords content="${keywords },${title }" />
    <meta name="description" content="${description }" />
    <meta name="author" content="${author }" />
<title>兴趣使然的无名小站 - ${title }</title>
</head>
<body>
<header id="header" class="header bg-white animated headroom--not-bottom slideDown headroom--top">
    <div class="navbar-container">
        <a href="/" class="navbar-logo">
            <img src="/css/tale/logo.png" alt="Tale Blog">
        </a>
        <div class="navbar-category">
        	
        </div>
        <div class="navbar-menu">
        	<c:forEach items="${categoryList }" var="category" >
	        	<ul>
	        		<li class="category"><a href="/${category.mark}">${category.name }</a></li>
	        		
	        		<c:forEach items="${category.childcategorys }" var="childCategory">
	        			<li class="childCategory"><a href="/${category.mark}/${childCategory.mark}">${childCategory.name }</a></li>
	        		</c:forEach>
	        	</ul>
        	</c:forEach>
        	
            <a href="https://tale.biezhi.me/archives">归档</a>
            <a href="https://tale.biezhi.me/links">友链</a>
            <a href="https://tale.biezhi.me/about">关于</a>
            
        </div>
        <div class="navbar-search" onclick="">
            <span class="icon-search"></span>
            <form role="search" onsubmit="return false;">
                <span class="search-box">
                    <input type="text" id="search-inp" class="input" placeholder="搜索..." maxlength="30" autocomplete="off">
                </span>
            </form>
        </div>
        <div class="navbar-mobile-menu" onclick="">
            <span class="icon-menu cross"><span class="middle"></span></span>
            <ul>
                <li><a href="https://tale.biezhi.me/archives">归档</a></li>
                <li><a href="https://tale.biezhi.me/links">友链</a></li>
                <li><a href="https://tale.biezhi.me/about">关于</a></li>
            </ul>
        </div>
    </div>
</header>