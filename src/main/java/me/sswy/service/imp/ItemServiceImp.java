package me.sswy.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import me.sswy.domain.Childcategory;
import me.sswy.domain.Condition;
import me.sswy.domain.Item;
import me.sswy.mapper.CategoryMapper;
import me.sswy.mapper.ChildcategoryMapper;
import me.sswy.mapper.ItemMapper;
import me.sswy.service.inter.ItemServiceInter;
@Service
public class ItemServiceImp implements ItemServiceInter{

	@Autowired
	private ItemMapper itemMapper;
	@Autowired
	private ChildcategoryMapper childcategoryMapper;
	@Autowired
	private CategoryMapper categoryMapper;
	@Override
	public List<Item> getIndexItem() {
		return itemMapper.getIndexItem();
	}
	@Override
	public Item findItemByMultiple(String attr,String categoryMark,String childCategoryMark) {
		String cid = categoryMapper.findCategoryByMark(categoryMark).getId();
		Childcategory childcategory = childcategoryMapper.findChildcategoryByMark(childCategoryMark,cid);
		return itemMapper.findItemByMultiple(attr,childcategory.getId());
	}
	
	@Override
	public List<Item> getItemsByMark(String categoryMark,String childCategoryMark) {
		String cid = categoryMapper.findCategoryByMark(categoryMark).getId();
		Childcategory childcategory = childcategoryMapper.findChildcategoryByMark(childCategoryMark,cid);
		return itemMapper.findItemByCcid(childcategory.getId());
	}
	@Override
	public List<Item> getItemsByMarkAndPage(String categoryMark,
			String childCategoryMark, Integer pageNum) {
		String cid = categoryMapper.findCategoryByMark(categoryMark).getId();
		Childcategory childcategory = childcategoryMapper.findChildcategoryByMark(childCategoryMark,cid);
		pageNum = pageNum-1;
		Condition condition = new Condition(childcategory.getId(),pageNum*12);
		return itemMapper.getItemsByMarkAndPage(condition);
	}
	@Override
	public Integer getItemCountByCategoryMark(String categoryMark,String childCategoryMark) {
		String cid = categoryMapper.findCategoryByMark(categoryMark).getId();
		Childcategory childcategory = childcategoryMapper.findChildcategoryByMark(childCategoryMark,cid);
		return itemMapper.getItemCountByCcid(childcategory.getId());
	}

}
