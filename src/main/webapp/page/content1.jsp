<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Insert title here</title>
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
	</p>
	<h2 id="directory0220000864555189861">兴趣使然的无名小站</h2>
	<blockquote>
		<p>${item.download }</p>
	</blockquote>
	<hr>
	图片区域
	<img src="${item.cover} "/>

        <p class="post-info">
            本文由 <a href="">biezhi</a> 创作，采用 <a
				href="https://creativecommons.org/licenses/by/4.0/" target="_blank"
				rel="external nofollow">知识共享署名4.0</a> 国际许可协议进行许可<br>本站文章除注明转载/出处外，均为本站原创或翻译，转载前请务必署名<br>最后编辑时间为:
            2017/09/28 11:35
        </p>
    
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




        <ol class="comment-list">
            <li id="li-comment-489" class="comment-body comment-parent comment-odd">
                <div id="comment-489">
                    <div class="comment-view" onclick="">
                        <div class="comment-header">
                            <img class="avatar" src="/static/admin/images/unicorn.png?s=80&amp;r=G&amp;d=" title="猪老三" width="80" height="80">
                            <span class="comment-author">
                                <a href="https://tale.biezhi.me/article/15" target="_blank" rel="external nofollow">猪老三</a>
                            </span>
                        </div>
                        <div class="comment-content">
                            <span class="comment-author-at"></span>
                            <p></p><p>66666666666</p>
<p></p>
                        </div>
                        <div class="comment-meta">
                            <time class="comment-time">2017-11-10</time>
                            <span class="comment-reply">
                                <a rel="nofollow" onclick="TaleComment.reply('489');">回复</a>
                            </span>
                        </div>
                    </div>
                </div>
            </li>
            <li id="li-comment-488" class="comment-body comment-parent comment-odd">
                <div id="comment-488">
                    <div class="comment-view" onclick="">
                        <div class="comment-header">
                            <img class="avatar" src="/static/admin/images/unicorn.png?s=80&amp;r=G&amp;d=" title="123" width="80" height="80">
                            <span class="comment-author">
                                <a href="http://www.baidu.com" target="_blank" rel="external nofollow">123</a>
                            </span>
                        </div>
                        <div class="comment-content">
                            <span class="comment-author-at"></span>
                            <p></p><p>123adsd</p>
<p></p>
                        </div>
                        <div class="comment-meta">
                            <time class="comment-time">2017-11-10</time>
                            <span class="comment-reply">
                                <a rel="nofollow" onclick="TaleComment.reply('488');">回复</a>
                            </span>
                        </div>
                    </div>
                </div>
            </li>
            <li id="li-comment-487" class="comment-body comment-parent comment-odd">
                <div id="comment-487">
                    <div class="comment-view" onclick="">
                        <div class="comment-header">
                            <img class="avatar" src="/static/admin/images/unicorn.png?s=80&amp;r=G&amp;d=" title="张三" width="80" height="80">
                            <span class="comment-author">
                                <a href="http://www.baidu.com" target="_blank" rel="external nofollow">张三</a>
                            </span>
                        </div>
                        <div class="comment-content">
                            <span class="comment-author-at"></span>
                            <p></p><p>可以可以啊</p>
<p></p>
                        </div>
                        <div class="comment-meta">
                            <time class="comment-time">2017-11-09</time>
                            <span class="comment-reply">
                                <a rel="nofollow" onclick="TaleComment.reply('487');">回复</a>
                            </span>
                        </div>
                    </div>
                </div>
            </li>
            <li id="li-comment-483" class="comment-body comment-parent comment-odd">
                <div id="comment-483">
                    <div class="comment-view" onclick="">
                        <div class="comment-header">
                            <img class="avatar" src="/static/admin/images/unicorn.png?s=80&amp;r=G&amp;d=" title="朵朵" width="80" height="80">
                            <span class="comment-author">
                                <a href="http://ad.funshion.org.cn/u/index?s=10001&amp;w=300&amp;h=250&amp;pvid=1470705019916_799478220" target="_blank" rel="external nofollow">朵朵</a>
                            </span>
                        </div>
                        <div class="comment-content">
                            <span class="comment-author-at"></span>
                            <p></p><p>sdfsdfsdfs</p>
<p></p>
                        </div>
                        <div class="comment-meta">
                            <time class="comment-time">2017-11-08</time>
                            <span class="comment-reply">
                                <a rel="nofollow" onclick="TaleComment.reply('483');">回复</a>
                            </span>
                        </div>
                    </div>
                </div>
            </li>
            <li id="li-comment-482" class="comment-body comment-parent comment-odd">
                <div id="comment-482">
                    <div class="comment-view" onclick="">
                        <div class="comment-header">
                            <img class="avatar" src="/static/admin/images/unicorn.png?s=80&amp;r=G&amp;d=" title="朵朵" width="80" height="80">
                            <span class="comment-author">
                                <a href="http://ad.funshion.org.cn/u/index?s=10001&amp;w=300&amp;h=250&amp;pvid=1470705019916_799478220" target="_blank" rel="external nofollow">朵朵</a>
                            </span>
                        </div>
                        <div class="comment-content">
                            <span class="comment-author-at"></span>
                            <p></p><p>的是防守打法对方答复</p>
<p></p>
                        </div>
                        <div class="comment-meta">
                            <time class="comment-time">2017-11-08</time>
                            <span class="comment-reply">
                                <a rel="nofollow" onclick="TaleComment.reply('482');">回复</a>
                            </span>
                        </div>
                    </div>
                </div>
            </li>
            <li id="li-comment-480" class="comment-body comment-parent comment-odd">
                <div id="comment-480">
                    <div class="comment-view" onclick="">
                        <div class="comment-header">
                            <img class="avatar" src="/static/admin/images/unicorn.png?s=80&amp;r=G&amp;d=" title="测试" width="80" height="80">
                            <span class="comment-author">
                                <a href="" target="_blank" rel="external nofollow">测试</a>
                            </span>
                        </div>
                        <div class="comment-content">
                            <span class="comment-author-at"></span>
                            <p></p><p>测试一下，功能不错</p>
<p></p>
                        </div>
                        <div class="comment-meta">
                            <time class="comment-time">2017-11-08</time>
                            <span class="comment-reply">
                                <a rel="nofollow" onclick="TaleComment.reply('480');">回复</a>
                            </span>
                        </div>
                    </div>
                </div>
            </li>
        </ol>
        <div class="lists-navigator clearfix">
            <ol class="page-navigator">
                <li class="current"><a href="?cp=1#comments">1</a></li>
                <li><a href="?cp=2#comments">2</a></li>
                <li><a href="?cp=3#comments">3</a></li>
                <li><a href="?cp=4#comments">4</a></li>
                <li><a href="?cp=5#comments">5</a></li>
                <li><a href="?cp=6#comments">6</a></li>
                <li><a href="?cp=7#comments">7</a></li>
                <li><a href="?cp=8#comments">8</a></li>
                <li class="next"><a href="?cp=2#comments">→</a></li>
            </ol>

        </div>
    </div>
</div>

<jsp:include page="/page/footer.jsp" />