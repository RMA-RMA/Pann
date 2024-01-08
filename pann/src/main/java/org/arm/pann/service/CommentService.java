package org.arm.pann.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.arm.pann.domain.BoardDTO;
import org.arm.pann.domain.CommentsDTO;
import org.arm.pann.domain.PageCriteria;

public interface CommentService {

	
		//댓글쓰기 
		public int register(CommentsDTO comments);
		
		//댓글읽기  
		public CommentsDTO get(Long cno);
		
		//댓글수정  
		public int modify (CommentsDTO comments);
		
		//댓글삭제 
		public int remove(Long cno);
		
		// 댓글 전체 리스트  
		public List<CommentsDTO> getList( PageCriteria pcri, Long bno); 

		
			
}