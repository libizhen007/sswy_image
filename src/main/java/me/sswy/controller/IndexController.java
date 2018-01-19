package me.sswy.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


import me.sswy.service.inter.ItemServiceInter;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class IndexController {


	@Autowired
	private ItemServiceInter itemServiceInter;

	@RequestMapping(value = "index.html")
	public String index(HttpSession session, HttpServletRequest request) {
		request.setAttribute("title", "欢迎来到(#^.^#)我的网站");
		request.setAttribute("description", "幻想乡");
		request.setAttribute("items", itemServiceInter.getIndexItem());
		System.out.println("index");
		return "/page/index.jsp";
	}

	
}
