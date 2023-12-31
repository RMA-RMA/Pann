package org.arm.pann.mapper;

import org.arm.pann.domain.BoardDTO;
import org.arm.pann.domain.CommentDTO;

public interface CommentMapper {

	//댓글 쓰기 
	public void insert(CommentDTO comment);
	
	
	//댓글 읽기
	public CommentDTO read(Long cno);
	
	//수정
	public int update(CommentDTO comment);
	
	//삭제
	public int delete(Long cno);
		
}
