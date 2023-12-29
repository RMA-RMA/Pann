package org.arm.pann.service;

import java.util.List;

import org.arm.pann.domain.BoardDTO;
import org.arm.pann.domain.PageCriteria;

public interface BoardService {

	// '글 등록'하는 서비스를 명령한다 
	public void register(BoardDTO board);
	
	//'특정 bno을 조회'하는 서비스를 명령한다 
	public BoardDTO get(Long bno);
	
	// '글 수정'하는 서비스를 명령한다
	public boolean modify(BoardDTO board);
	
	// '글 삭제'하는 서비스를 명령한다 
	public boolean remove(Long bno);
	
	// 페이징이 적용된 '게시판 조회 '하는 서비스를 명령한다 
	public List<BoardDTO> getList(PageCriteria pcri);
	
	// 전체 게시글 수 구하기 
	public int getTotalCount(PageCriteria pcri);
	
}