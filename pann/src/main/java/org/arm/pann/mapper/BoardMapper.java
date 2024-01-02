package org.arm.pann.mapper;

import java.util.List;

import org.arm.pann.domain.BoardDTO;
import org.arm.pann.domain.PageCriteria;

public interface BoardMapper {

	//테이블 조회 
	public List<BoardDTO> getList();
	
	//글쓰기 
	public void insert(BoardDTO board);
	public void insertSelectKey(BoardDTO board);
	
	// 읽기
	public BoardDTO read(Long bno);
	
	//삭제
	public int delete(Long bno);
	
	//수정
	public int update(BoardDTO board);
	
	//페이징 
	public List<BoardDTO> listPaging(PageCriteria pcri);
	
	//전체 게시글 수 구하기 
	public int getTotalCount(PageCriteria pcri);
	
}
