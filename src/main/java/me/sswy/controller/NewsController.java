package me.sswy.controller;

import javax.servlet.http.HttpServletRequest;

import me.sswy.service.inter.NewsServiceInter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NewsController {
	@Autowired
	private NewsServiceInter newsServiceInter;
	
	@RequestMapping("/news")
	public String newsLista(HttpServletRequest request){
		return "redirect:" +  request.getRequestURI()+"/";
	}
	
	@RequestMapping("/news/{q}")
	public String newsList(HttpServletRequest request){
		System.out.println("newsList");
		request.setAttribute("newsList", newsServiceInter.getNewTimeNews());
		return "/page/newsList.jsp";
	}
	
	@RequestMapping("/news/{id:\\d+}.html")
	public String targetNews(HttpServletRequest request,@PathVariable Integer id){
		System.out.println("targetNews");
		request.setAttribute("news", newsServiceInter.findNewsById(id));
		return "/page/news.jsp";
	}
}
