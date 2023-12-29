package org.arm.pann.service;

import java.util.List;

import org.arm.pann.domain.BoardDTO;
import org.arm.pann.domain.PageCriteria;
import org.arm.pann.mapper.BoardMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardMapper mapper;

	// '글 등록'하는 서비스를 명령한다
	@Override
	public void register(BoardDTO board) {
		// TODO Auto-generated method stub
		log.info("register = > " + board);
		mapper.insertSelectKey(board);

	}

	// 페이징이 적용된 '게시판 조회 '하는 서비스를 명령한다
	@Override
	public List<BoardDTO> getList(PageCriteria pcri) {
		// TODO Auto-generated method stub
		log.info("getList =>" +pcri);
		return mapper.listPaging(pcri);
	}

	// '글 수정'하는 서비스를 명령한다
	@Override
	public boolean modify(BoardDTO board) {
		// TODO Auto-generated method stub
		log.info("modify =>" + board);
		return mapper.update(board) == 1;
	}

	// '글 삭제'하는 서비스를 명령한다
	@Override
	public boolean remove(Long bno) {
		// TODO Auto-generated method stub
		log.info("remove =>" + bno);
		return mapper.delete(bno) == 1;
	}

	//'특정 bno을 조회'하는 서비스를 명령한다
	@Override
	public BoardDTO get(Long bno) {
		// TODO Auto-generated method stub
		log.info("get =>" + bno);
		return mapper.read(bno);
	}

	@Override
	public int getTotalCount(PageCriteria pcri) {
		// TODO Auto-generated method stub
		log.info("getTotalCount =>" + pcri);
		return mapper.getTotalCount(pcri);
	}

	
	
	
	
}
