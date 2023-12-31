package org.arm.pann.mapper;

import java.util.stream.IntStream;

import org.arm.pann.domain.CommentDTO;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j2;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/root-context.xml" })
@Log4j2
public class CommentMapperTest {

	@Autowired
	private CommentMapper mapper;
	
	// mapper 연결 테스트 
	@Test
	public void mapperConnentionTest() {	
		log.info("===============");
		log.info(mapper);
		log.info("===============");
	}

	// 특정 게시글 배열 에 댓글 쓰기 테스트 
	private Long[] bnoArr = {5L,20L,25L};
	
	@Test
	public void CommentInsertTest() {
		
		IntStream.rangeClosed(1,10).forEach(i -> {
			
			CommentDTO comment = new CommentDTO();
			comment.setBno(bnoArr[i % 5]);
			comment.setComment("댓글테스트 "+i);
			comment.setCommenter("댓글작성자"+i);
			
			mapper.insert(comment);
			
		});
		
	}
	
	// 댓글 읽기 테스트 
	@Test
	public void CommentReadTest() {
		Long targetCno = 5L;
		
		CommentDTO comment = mapper.read(targetCno);
		log.info(comment);
	}
		
	
	// 댓글삭제 테스트 
	@Test
	public void CommentUpdateTest() {
		Long targetCno = 5L;
		
		CommentDTO comment = mapper.read(targetCno);
		comment.setComment("Update 댓글 ");
		int count = mapper.update(comment);
		log.info("update 시간 "+count);
		
	}

	// 댓글삭제 테스트 
	@Test
	public void CommentDeleteTest() {
		Long targetCno = 5L;
		
		
		mapper.delete(targetCno);
	}
	
	
	
}
