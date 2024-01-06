package org.arm.pann.mapper;

import java.util.stream.IntStream;

import org.arm.pann.domain.CommentsDTO;
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

	
	
	
	// 특정 게시글 배열 에 댓글 쓰기 테스트 
	private Long[] bnoArr = {202L,203L,222L,241L,242L};
	@Autowired
	private CommentMapper mapper;
	
	@Test
	public void CommentInsertTest() {

		IntStream.rangeClosed(1,10).forEach(i -> {
			
			CommentsDTO comments = new CommentsDTO();
			comments.setBno(bnoArr[i % 5]);
			comments.setComments("댓글테스트 "+i);
			comments.setCommenter("댓글작성자"+i);
			
			mapper.insert(comments);
			
		});
		
	}
	
	// mapper 연결 테스트 
		@Test
		public void mapperConnentionTest() {	
			log.info("===============");
			log.info(mapper);
			log.info("===============");
		}
		
		// 댓글 읽기 
		@Test
		public void commentReadTest() {	
			
			Long targetCno = 3L;
			CommentsDTO comments = mapper.read(targetCno);
			log.info("===============");
			log.info(comments);
			log.info("===============");
		}
		// 댓글 수정
		@Test
		public void commentUpdateTest() {	
					
			Long targetCno = 5L;
			CommentsDTO comments = mapper.read(targetCno);
			comments.setComments("댓글 수정 5L ");
			int count = mapper.update(comments);
			log.info("===============");
			log.info("댓글 수정 완료 1 반환  : " +count);
			log.info("===============");
				}
		// 댓글 읽기 
		@Test
		public void commentDeleteTest() {	
					
				Long targetCno = 3L;
				mapper.delete(targetCno);
				
				}
}
