package org.arm.pann.domain;

import org.springframework.web.util.UriComponentsBuilder;

public class PageCriteria {

	private int pageNum; 
	private int amount;  
	private String type;
	private String keyword;
	
	public PageCriteria() { 
		this(1,10);
	}
	public PageCriteria(int pageNum, int amount) {
		super();
		this.pageNum = pageNum;
		this.amount = amount;
	}
	
	// 검색 조건 
	public String[] getTypeArr() {
		return type == null? new String[] {} : type.split("");
	}
	
	
	
	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	@Override
	public String toString() {
		return "PageCriteria [pageNum=" + pageNum + ", amount=" + amount + ", type=" + type + ", keyword=" + keyword
				+ "]";
	}
	

	
	
	
	
}
