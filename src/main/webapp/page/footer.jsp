<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

</head>
<footer id="footer" class="footer bg-white">
    <div class="footer-social">
        <div class="footer-container clearfix">
            <div class="social-list">
                <a class="social weibo" target="blank" href="http://weibo.com/biezhi">微博</a>

                <a class="social zhihu" target="blank" href="https://www.zhihu.com/people/biezhi">知乎</a>

                <a class="social rss" target="blank" href="https://tale.biezhi.me/feed">RSS</a>

                <a class="social github" target="blank" href="https://github.com/biezhi">Github</a>

                <a class="social twitter" target="blank" href="https://twitter.com/biezhii">Twitter</a>
            </div>
        </div>
    </div>
    <div class="footer-meta">
        <div class="footer-container">
            <div class="meta-item meta-copyright">
                <div class="meta-copyright-info">
                    <a href="https://tale.biezhi.me/" class="info-logo">
                        <img src="./首页_files/logo.png" alt="Tale Blog">
                    </a>
                    <div class="info-text">
                        <p>一生有所追求.</p>
                        <p>Powered by <a href="https://github.com/otale/tale" target="_blank" rel="nofollow">Tale</a>
                        </p>
                        <p>© 2017 <a href="https://github.com/biezhi">biezhi</a></p>
                    </div>
                </div>
            </div>

            <div class="meta-item meta-posts">
                <h3 class="meta-title">最新文章</h3>
                <c:forEach items="${newsList }" var="news">
                	 <li>
                    <a href="${news.id }">${news.name }</a>
                </li>
                </c:forEach>
               
                
            </div>

            <div class="meta-item meta-comments">
                <h3 class="meta-title">最新评论</h3>
                <li>
                    <a href="https://tale.biezhi.me/article/15#comment-469">aaa：看看评论yaa</a>
                </li>
                <li>
                    <a href="https://tale.biezhi.me/article/2#comment-468">abbb：22255</a>
                </li>
                <li>
                    <a href="https://tale.biezhi.me/article/1#comment-467">问问：测试dddddddddddddddd</a>
                </li>
                <li>
                    <a href="https://tale.biezhi.me/article/15#comment-466">1：没听过ya</a>
                </li>
                <li>
                    <a href="https://tale.biezhi.me/article/15#comment-465">一叶孤舟：么么么么么么</a>
                </li>
                <li>
                    <a href="https://tale.biezhi.me/article/15#comment-464">小拳头：除了单一主题还有别的主题么</a>
                </li>
                <li>
                    <a href="https://tale.biezhi.me/article/1#comment-463">ＴＥＳＴ：6666666 测试</a>
                </li>
                <li>
                    <a href="https://tale.biezhi.me/article/10#comment-462">ll：哈哈哈jjjj</a>
                </li>
            </div>
        </div>
    </div>
</footer>
</body>
</html>