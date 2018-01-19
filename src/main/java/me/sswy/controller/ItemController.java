package me.sswy.controller;

import javax.servlet.http.HttpServletRequest;

import me.sswy.domain.Item;
import me.sswy.service.inter.ItemServiceInter;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ItemController {
	@Autowired
	private ItemServiceInter itemServiceInter;
	
	@RequestMapping(value = "/{category}/{childcategory}/{attr:\\d*}.html", method = { RequestMethod.GET })
	public String targetItem(@PathVariable String category,
			@PathVariable String childcategory, @PathVariable String attr,
			HttpServletRequest request) {
		System.out.println("targetItem");
		Item item = itemServiceInter.findItemByMultiple(attr, category,
				childcategory);
		request.setAttribute("item", item);
		return "/page/content.jsp";
	}
	
}
