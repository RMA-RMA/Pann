package org.arm.pann.domain;

public class PageDTO {

	private int startPage;
	private int endPage;
	private boolean prev;
	private boolean next;
	private int total;
	private PageCriteria pcri;
	
	
	public PageDTO() {}
	public PageDTO( PageCriteria pcri,int total) {
		
		
		this.endPage = (int) (Math.ceil(pcri.getPageNum()/10.0)*10);
		this.startPage = endPage-9;
		int realEnd = (int) (Math.ceil( (total*1.0)/pcri.getAmount() ));
		if(realEnd < this.endPage) { this.endPage=realEnd;}
		this.prev = this.startPage > 1;
		this.next = this.endPage < realEnd;
		this.total = total;
		this.pcri = pcri;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public boolean isPrev() {
		return prev;
	}
	public void setPrev(boolean prev) {
		this.prev = prev;
	}
	public boolean isNext() {
		return next;
	}
	public void setNext(boolean next) {
		this.next = next;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public PageCriteria getPcri() {
		return pcri;
	}
	public void setPcri(PageCriteria pcri) {
		this.pcri = pcri;
	}
	@Override
	public String toString() {
		return "PageDTO [startPage=" + startPage + ", endPage=" + endPage + ", prev=" + prev + ", next=" + next
				+ ", total=" + total + ", pcri=" + pcri + "]";
	}
	
	
	
	
	
}
