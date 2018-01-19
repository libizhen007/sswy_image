package me.sswy.domain;

import java.io.Serializable;
import java.util.List;

public class Childcategory implements Serializable{
	/**
	 * 一般来说，不同主类目下应该会有相同的子类目名称
	 */
	private static final long serialVersionUID = 1L;
	private String id;
	private String name;
	private Category category;
	private String mark;
	private List<Item> items;
	private String cover;
	public String getCover() {
		return cover;
	}
	public void setCover(String cover) {
		this.cover = cover;
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
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public String getMark() {
		return mark;
	}
	public void setMark(String mark) {
		this.mark = mark;
	}
	public List<Item> getItems() {
		return items;
	}
	public void setItems(List<Item> items) {
		this.items = items;
	}
}
