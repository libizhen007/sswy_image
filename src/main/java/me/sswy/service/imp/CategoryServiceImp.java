package me.sswy.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import me.sswy.domain.Category;
import me.sswy.mapper.CategoryMapper;
import me.sswy.service.inter.CategoryServiceInter;
@Service
public class CategoryServiceImp implements CategoryServiceInter{

	@Autowired
	private CategoryMapper categoryMapper;
	
	@Override
	public List<Category> getAllCategory() {
		return categoryMapper.categoryList();
	}

	@Override
	public Category findCategoryByMark(String mark) {
		return categoryMapper.findCategoryByMark(mark);
	}

}
