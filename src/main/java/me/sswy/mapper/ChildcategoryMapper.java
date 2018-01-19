package me.sswy.mapper;

import java.util.List;

import me.sswy.domain.Childcategory;

public interface ChildcategoryMapper {
	public List<Childcategory> findChildcategoryByCid(String cid);
	public List<Childcategory> childcategoryList();
	public List<Childcategory> findChildcategoryByid(String id);
	public Childcategory findChildcategoryByMark(String mark,String cid);
	
	
}
