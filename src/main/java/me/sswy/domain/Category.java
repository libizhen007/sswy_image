package me.sswy.domain;

import java.io.Serializable;
import java.util.List;

public class Category implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String id;
	private String name;
	private String mark;
	private List<Childcategory> childcategorys;
	
	public List<Childcategory> getChildcategorys() {
		return childcategorys;
	}
	public void setChildcategorys(List<Childcategory> childcategorys) {
		this.childcategorys = childcategorys;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMark() {
		return mark;
	}
	public void setMark(String mark) {
		this.mark = mark;
	}
}
