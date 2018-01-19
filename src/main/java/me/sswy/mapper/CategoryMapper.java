package me.sswy.mapper;

import java.util.List;

import me.sswy.domain.Category;

public interface CategoryMapper {
	public List<Category> categoryList();
	public Category findCategoryByMark(String mark);
	public Category findCategoryByid(String cid);
}
