package me.sswy.interceptor;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import me.sswy.service.inter.CategoryServiceInter;
import me.sswy.service.inter.ItemServiceInter;
import me.sswy.service.inter.NewsServiceInter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class MainInterceptor implements HandlerInterceptor {
	@Autowired
	private CategoryServiceInter categoryServiceInter;
	@Autowired
	private ItemServiceInter itemServiceInter;
	@Autowired
	private NewsServiceInter newsServiceInter;
	
	/**
	 * 使用正则判断访问的页面是否是需要分页的页面
	 */
	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		HttpSession session = request.getSession();
		String uri = request.getRequestURI();
		Pattern p = Pattern.compile("/(.{1,10})/(.{1,10})/$|/(.{1,10})/(.{1,10})/(\\d+)$");
		Matcher m = p.matcher(uri);
		boolean b = m.matches();
		//需要分页的页面
		if(b){
			
			Integer count;
			if(m.group(1)!=null){
				count = itemServiceInter.getItemCountByCategoryMark(m.group(1), m.group(2));
				request.setAttribute("currentPageNum", 1);
			}else{
				count = itemServiceInter.getItemCountByCategoryMark(m.group(3), m.group(4));
				request.setAttribute("currentPageNum", m.group(5));
			}
			
			request.setAttribute("itemCount", count);
			request.setAttribute("pageNum",(int)Math.ceil(count/12)+1);
			
		}
		if(session.getAttribute("newsList")== null){
			session.setAttribute("newsList", newsServiceInter.getNewTimeNews());
			session.setAttribute("categoryList",categoryServiceInter.getAllCategory());
			session.setAttribute("keywords", "网站名,网站域名,美女图片,美女高清套图,菠萝社,18X");
			session.setAttribute("author", "作者当然是作者本人啦O(∩_∩)O哈哈~");
		}
		
		
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub

	}

}
