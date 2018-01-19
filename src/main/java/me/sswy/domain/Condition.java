package me.sswy.domain;

public class Condition {
	private String ccid;
	public Condition(String ccid, Integer itemStartNum) {
		super();
		this.ccid = ccid;
		this.itemStartNum = itemStartNum;
	}
	private Integer itemStartNum;
	public String getCcid() {
		return ccid;
	}
	public void setCcid(String ccid) {
		this.ccid = ccid;
	}
	public Integer getItemStartNum() {
		return itemStartNum;
	}
	public void setItemStartNum(Integer itemStartNum) {
		this.itemStartNum = itemStartNum;
	}
}
