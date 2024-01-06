package org.arm.pann.domain;

import java.util.Date;
import java.util.Objects;

public class CommentsDTO {
	
	private Long cno; //댓글번호 
    private Long bno; //게시글번호  
    private String comments;//댓글내용 
    private String commenter;//댓글작성자 
    private Date commentDate;// 댓글작성시간 
    private Date commentUpdate; // 댓글수정시간 
    
    public CommentsDTO() {}
	public CommentsDTO(Long cno, Long bno, String comments, String commenter) {
		super();
		this.cno = cno;
		this.bno = bno;
		this.comments = comments;
		this.commenter = commenter;
	}



	@Override
	public int hashCode() {
		return Objects.hash(bno, cno, commenter, comments);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		CommentsDTO other = (CommentsDTO) obj;
		return Objects.equals(bno, other.bno) && Objects.equals(cno, other.cno)
				&& Objects.equals(commenter, other.commenter) && Objects.equals(comments, other.comments);
	}
	public Long getCno() {
		return cno;
	}
	public void setCno(Long cno) {
		this.cno = cno;
	}
	public Long getBno() {
		return bno;
	}
	public void setBno(Long bno) {
		this.bno = bno;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	public String getCommenter() {
		return commenter;
	}
	public void setCommenter(String commenter) {
		this.commenter = commenter;
	}
	public Date getCommentDate() {
		return commentDate;
	}
	public void setCommentDate(Date commentDate) {
		this.commentDate = commentDate;
	}
	public Date getCommentUpdate() {
		return commentUpdate;
	}
	public void setCommentUpdate(Date commentUpdate) {
		this.commentUpdate = commentUpdate;
	}
	@Override
	public String toString() {
		return "CommentsDTO [cno=" + cno + ", bno=" + bno + ", comments=" + comments + ", commenter=" + commenter
				+ ", commentDate=" + commentDate + ", commentUpdate=" + commentUpdate + "]";
	}
	
	
	

    
}
