package org.arm.pann.mapper;

import java.util.List;

import org.arm.pann.domain.BoardDTO;
import org.arm.pann.domain.PageCriteria;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j2;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/root-context.xml" })
@Log4j2
public class BoardMapperTest {

	@Autowired
	private BoardMapper mapper;

	// 게시판 CRUD 테스트 
	@Test
	public void boardList() {
		System.out.println("=====================================");
		mapper.getList().forEach(board -> log.info(board));
		System.out.println("=====================================");
	}

	@Test
	public void boardInsert() {

		BoardDTO board = new BoardDTO();
		board.setTitle("새 글");
		board.setContent("새 내용");
		board.setWriter("새 작성자");
		System.out.println("=====================================");
		mapper.insert(board);
		log.info(board);

		System.out.println("=====================================");
	}

	@Test
	public void boardInsertSelectKey() throws Exception {
		BoardDTO board = new BoardDTO();
		board.setTitle("새글key");
		board.setContent("새내용key");
		board.setWriter("새작성자key");
		System.out.println("=====================================");
		mapper.insertSelectKey(board);
		log.info(board);

		System.out.println("=====================================");
	}

	@Test
	public void boardRead() {

		BoardDTO board = mapper.read(41L);
		log.info(board);

	}

	@Test
	public void boardDelect() {

		log.info("DELETE COUNT: " + mapper.delete(4L));
		log.info("DELETE COUNT: " + mapper.delete(5L));
		log.info("DELETE COUNT: " + mapper.delete(21L));

		
	}

	@Test
	public void boardUpdate() {

		BoardDTO board = new BoardDTO();

		board.setBno(42L);
		board.setTitle("수정 Title");
		board.setContent("수정 Content");

		int count = mapper.update(board);
		log.info("update count : " + count);

	}

	// 페이징 변수가 적용되는지 테스트
	@Test
	public void listPaging() {

		PageCriteria pcri = new PageCriteria();
		pcri.setPageNum(3);
		pcri.setAmount(10);
		List<BoardDTO> list = mapper.listPaging(pcri);
		System.out.println("=====================================");
		list.forEach(board -> log.info(board.getBno()));
		System.out.println("=====================================");
	}
	
	//검색기능 테스트 
	@Test
	public void searchTest() {
		
		PageCriteria pcri = new PageCriteria();
		pcri.setKeyword("새");
		pcri.setType("TC");
		
		List<BoardDTO> list = mapper.listPaging(pcri);
		list.forEach(board -> log.info(board));
	}
	
	
	
	
}
