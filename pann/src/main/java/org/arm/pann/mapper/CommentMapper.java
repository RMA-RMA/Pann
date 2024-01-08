package org.arm.pann.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.arm.pann.domain.CommentsDTO;
import org.arm.pann.domain.PageCriteria;

public interface CommentMapper {

	//댓글 쓰기 
	public int insert(CommentsDTO comments);

	//댓글 읽기 
	public CommentsDTO read(Long cno);

	//댓글 수정  
	public int update (CommentsDTO comments);
	
	//댓글 삭제
	public int delete(Long cno);
	
	//댓글 페이징 
	public List<CommentsDTO> listPaging ( @Param("pcri") PageCriteria pcri, @Param("bno") Long bno); 
		
}
