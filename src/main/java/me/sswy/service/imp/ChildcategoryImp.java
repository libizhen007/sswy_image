package me.sswy.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import me.sswy.domain.Category;
import me.sswy.domain.Childcategory;
import me.sswy.mapper.CategoryMapper;
import me.sswy.mapper.ChildcategoryMapper;
import me.sswy.service.inter.ChildcategoryInter;
@Service
public class ChildcategoryImp implements ChildcategoryInter {

	@Autowired
	private CategoryMapper categoryMapper;
	@Autowired
	private ChildcategoryMapper childcategoryMapper;
	@Override
	public List<Childcategory> findChildcategoryByCategoryMark(String categoryMark) {
		Category category = categoryMapper.findCategoryByMark(categoryMark);
		return childcategoryMapper.findChildcategoryByCid(category.getId());
	}
	@Override
	public Childcategory findChildcategoryByMark(String mark, String cid) {
		
		return childcategoryMapper.findChildcategoryByMark(mark, cid);
	}
	
	

	
}
