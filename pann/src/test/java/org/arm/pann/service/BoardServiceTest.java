package org.arm.pann.service;

import static org.junit.Assert.assertNotNull;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.log;

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
public class BoardServiceTest {

	@Autowired
	private BoardService service;
	
	
	//service 객체 주입 여부 확인하기 
	@Test
	public void serviceExist() {
		System.out.println("cccccccccccccccccccccc");
		
		log.info("=======================");
		log.info("service => "+ service);
		assertNotNull(service);
	}
	
	//'글등록' 하는 서비스를 명령한다   
	@Test
	public void serviceRegister() {
		
		BoardDTO board = new BoardDTO();
		board.setTitle("새글 ");
		board.setContent("새내용 ");
		board.setWriter("새작성자 ");
		
		service.register(board);
		
		log.info("생성된 게시물 번호 => "+board.getBno());
		
	}

	// 페이징 적용된 '게시판 조회' 하는 서비스를 명령한다  
	@Test
	public void serviceList() {
		
		service.getList(new PageCriteria(2,10)).forEach(board-> log.info(board));
		
	}

	//'특정 bno을 조회'하는 서비스를 명령한다
	@Test
	public void serviceRead() {
		
		log.info(service.get(2L));
		
	}
	
	// '글 삭제'하는 서비스를 명령한다
	@Test
	public void serviceDelete() {
		
		log.info("Remove Result:"+service.remove(2L));
	}
	
	// '글 수정 '하는 서비스를 명령한다
	@Test
	public void serviceModify() {
			
		BoardDTO board = service.get(5L);
		
		if(board == null) { return;}
		
		board.setTitle("제목 수정 ");
		log.info("modify result : " + service.modify(board));
	}


}
