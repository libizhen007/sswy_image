package me.sswy.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import me.sswy.domain.Childcategory;

import me.sswy.service.inter.CategoryServiceInter;
import me.sswy.service.inter.ChildcategoryInter;
import me.sswy.service.inter.ItemServiceInter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CategoryController {

	@Autowired
	private ItemServiceInter itemServiceInter;
	@Autowired
	private ChildcategoryInter childcategoryInter;
	@Autowired 
	private CategoryServiceInter categoryServiceInter;
	@RequestMapping("/{category:\\w+[^news|^.html]}")
	public String categorya(HttpServletRequest request) {
		String uri = request.getRequestURI() + "/";
		System.out.println("categorya");
		return "redirect:" + uri;
	}

	/**
	 * 匹配/gq/
	 * @param category
	 * @param excess
	 * @param request
	 * @return
	 */
	@RequestMapping("/{category:\\w+[^news]}/{excess}")
	public String targetCategory(@PathVariable String category,
			@PathVariable String excess, HttpServletRequest request) {
		System.out.println("targetCategory:" + category);
		if (!excess.equals("index")) {
			String uri = request.getRequestURI() + "/";
			return "redirect:" + uri;
		}

		List<Childcategory> childCategorys = childcategoryInter
				.findChildcategoryByCategoryMark(category);
		request.setAttribute("childCategorys", childCategorys);
		
		String title = categoryServiceInter.findCategoryByMark(category).getName();
		request.setAttribute("title","网站名称 " + title + "大图");
		
		return "/page/childCategory.jsp";
	}

	/**
	 * 获得具体栏目下的所有item，并循环分页
	 * @param category
	 * @param childCategoryMark
	 * @param request
	 * @return
	 * 
	 */
	@RequestMapping("/{category:\\w+[^news]}/{childcategory:\\w*}/{excess:\\D*}")
	public String targetChildcategory(@PathVariable String category,
			@PathVariable("childcategory") String childCategoryMark,
			HttpServletRequest request) {
		System.out.println("targetChildcategory");
		request.setAttribute("items", itemServiceInter.getItemsByMark(category, childCategoryMark));
		
		String title = childcategoryInter.findChildcategoryByMark(childCategoryMark, categoryServiceInter.findCategoryByMark(category).getId()).getName() ;
		
		request.setAttribute("title",  title + "大图");
		
		return "/page/index.jsp";
	}

	@RequestMapping("/{category:\\w+[^news]}/{childcategory:\\w*}/{page:\\d*}")
	public String limitItem(@PathVariable String category,
			@PathVariable("childcategory") String childCategoryMark,
			@PathVariable Integer page, HttpServletRequest request) {
		System.out.println("page");
		
		String title = childcategoryInter.findChildcategoryByMark(childCategoryMark, categoryServiceInter.findCategoryByMark(category).getId()).getName() ;
		request.setAttribute("title",  title + "大图");

		
		
		request.setAttribute("items", itemServiceInter.getItemsByMarkAndPage(
				category, childCategoryMark, page));
		return "/page/index.jsp";
	}

}
