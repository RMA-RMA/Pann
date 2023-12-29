package org.arm.pann.domain;

import java.util.Date;
import java.util.Objects;

import lombok.Data;


public class BoardDTO {

	private Long bno; // 시퀀스 번호 
	private String title; // 글 제목 
	private String content; // 글내용 
	private String writer; // 작성자 
	private Date regdate; //등록시간 
	private Date updateDate; // 업데이트 시간 
	
	public BoardDTO() {}
	public BoardDTO(String title, String content, String writer) {
		super();
		this.title = title;
		this.content = content;
		this.writer = writer;
	}
	
	
	public Long getBno() {
		return bno;
	}
	public void setBno(Long bno) {
		this.bno = bno;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public Date getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}
	
	@Override
	public String toString() {
		return "BoardVO [bno=" + bno + ", title=" + title + ", content=" + content + ", writer=" + writer + ", regdate="
				+ regdate + ", updateDate=" + updateDate + "]";
	}
	
	@Override
	public int hashCode() {
		return Objects.hash(bno, content, title, writer);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		BoardDTO other = (BoardDTO) obj;
		return Objects.equals(bno, other.bno) && Objects.equals(content, other.content)
				&& Objects.equals(title, other.title) && Objects.equals(writer, other.writer);
	}
	
	
	
}
