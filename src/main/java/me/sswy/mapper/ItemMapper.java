package me.sswy.mapper;

import java.util.List;

import me.sswy.domain.Condition;
import me.sswy.domain.Item;

public interface ItemMapper {
	public List<Item> findItemByCcid(String ccid);
	public List<Item> getIndexItem();
	public Item findItemByMultiple(String attr,String ccid);
	public List<Item> getItemsByMarkAndPage(Condition condition);
	public Integer getItemCountByCcid(String ccid);
	
}	
