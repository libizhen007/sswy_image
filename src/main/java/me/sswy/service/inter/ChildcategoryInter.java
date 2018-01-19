package me.sswy.service.inter;

import java.util.List;

import me.sswy.domain.Childcategory;

public interface ChildcategoryInter {
	public List<Childcategory> findChildcategoryByCategoryMark(String categoryMark);
	public Childcategory findChildcategoryByMark(String mark,String cid);
}
