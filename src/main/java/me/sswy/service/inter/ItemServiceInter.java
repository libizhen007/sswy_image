package me.sswy.service.inter;

import java.util.List;


import me.sswy.domain.Item;

public interface ItemServiceInter {
	public List<Item> getIndexItem();
	
	public Item findItemByMultiple(String attr,String categoryMark,String childCategoryMark);
	
	public List<Item> getItemsByMark(String categoryMark,String childCategoryMark);
	//找到所属栏目下的所有item，按分页查询，每页12个
	public List<Item> getItemsByMarkAndPage(String categoryMark,String childCategoryMark,Integer pageNum);
	
	//获得当前分类下所有item的数目
	public Integer getItemCountByCategoryMark(String categoryMark,String childCategoryMark);
}
