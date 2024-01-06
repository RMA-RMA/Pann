package org.arm.pann.mapper;

import org.arm.pann.domain.CommentsDTO;

public interface CommentMapper {

	//댓글 쓰기 
	public void insert(CommentsDTO comments);

	//댓글 쓰기 
	public CommentsDTO read(Long cno);

	//댓글 수정  
	public int update (CommentsDTO comments);
	
	//댓글 삭제 
	public CommentsDTO delete(Long cno);
}
