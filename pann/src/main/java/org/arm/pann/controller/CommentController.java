package org.arm.pann.controller;

import java.util.List;

import org.arm.pann.domain.CommentsDTO;
import org.arm.pann.domain.PageCriteria;
import org.arm.pann.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import lombok.extern.log4j.Log4j2;

@Log4j2
@RestController
@RequestMapping("/comments/") 
public class CommentController {

	// 서비스 동작 가져오기
	@Autowired
	private CommentService service;

	//댓글 등록 메서드 
	@PostMapping(value="/new", consumes = "application/json",produces= {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> create(@RequestBody CommentsDTO comments) {
		
		log.info(comments);
		int insertCount = service.register(comments);
		log.info("댓글생성카운트 "+insertCount);
		return insertCount ==1 ? new ResponseEntity<>("success",HttpStatus.OK) : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	
	
	//댓글 읽기  
	@GetMapping(value="/{cno}",produces= {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<CommentsDTO> get(@PathVariable("cno") Long cno) {
			log.info("get ============:" + cno);
			return new ResponseEntity<>(service.get(cno),HttpStatus.OK);
	}
	
	//댓글 수정   
	@RequestMapping(method= {RequestMethod.PUT, RequestMethod.PATCH }, value="/{cno}",consumes = "application/json", produces= {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> modify(@RequestBody CommentsDTO comments, @PathVariable("cno") Long cno) {
			comments.setCno(cno);
			log.info("cno ============:" + cno);
			log.info("modify ============:" + comments);
			return service.modify(comments) == 1 ? new ResponseEntity<>("success",HttpStatus.OK) : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	
	
	
	//댓글 삭제  
	@DeleteMapping(value="/{cno}",produces= {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> remove(@PathVariable("cno") Long cno) {
			log.info("remove ============:" + cno);
			return service.remove(cno) == 1 ? new ResponseEntity<>("success",HttpStatus.OK) : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	
	//댓글 리스트 조회  
	@GetMapping(value="/pages/{bno}/{page}",produces= {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<List<CommentsDTO>> getList(@PathVariable("page") int page, @PathVariable("bno") Long bno) {
			log.info("getList ============");
			PageCriteria pcri = new PageCriteria (page,10);
			log.info(pcri);
			return new ResponseEntity<>(service.getList(pcri,bno),HttpStatus.OK);
	}
		
	
}
