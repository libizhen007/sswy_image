package me.sswy.service.inter;

import java.util.List;

import me.sswy.domain.Category;

public interface CategoryServiceInter {
	public List<Category> getAllCategory();
	public Category findCategoryByMark(String mark);
}
