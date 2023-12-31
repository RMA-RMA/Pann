package org.arm.pann.controller;

import org.arm.pann.domain.BoardDTO;
import org.arm.pann.domain.PageCriteria;
import org.arm.pann.domain.PageDTO;
import org.arm.pann.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.extern.log4j.Log4j2;

@Log4j2
@RestController
@RequestMapping("/board/") // http://localhost/board
public class BoardController {

	// 서비스 동작 가져오기
	@Autowired
	private BoardService service;

	// 게시판 리스트 URL 맵핑
	@GetMapping("/list")
	public String list( PageCriteria pcri ,Model m) {

		log.info("list ->"+ pcri);
		m.addAttribute("list", service.getList(pcri));
		
		int total = service.getTotalCount(pcri);
		log.info("total== "+total);
		m.addAttribute("pageMaker", new PageDTO(pcri,total) );
		
		return "list";
	}

	@GetMapping("/register")
	public String register() {
		
		return "register";
	}
	
	// 새글 등록 URL 맵핑
	@PostMapping("/register")
	public String register(BoardDTO board, RedirectAttributes rttr) {

		log.info("register =>" + board);
		service.register(board);
		rttr.addFlashAttribute("result", board.getBno());
		
		return "redirect:/board/list"; // 글 쓰기 전 게시판 리스트로 돌아가야함
	}
	

	

	// 특정 글 조회 URL 맵핑
	@GetMapping("/get")
	public String get(@RequestParam("bno") Long bno, @ModelAttribute("pcri") PageCriteria pcri, Model m) {

		log.info("/get");
		m.addAttribute("board", service.get(bno));
		
		return "get";
		
	}
	
	//특정 글 수정 URL 맵핑
	@GetMapping("/modify")
	public String modify(@RequestParam("bno") Long bno, @ModelAttribute("pcri") PageCriteria pcri, Model m) {

		log.info("/modify");
		m.addAttribute("board", service.get(bno));
		
		return "modify";
		
	}
	

	// 글 수정 URL 맵핑
	@PostMapping("/modify")
	public String modify(BoardDTO board, PageCriteria pcri ,RedirectAttributes rttr) {

		log.info("modify =>" + board);
		if(service.modify(board)) {
			rttr.addFlashAttribute("result","success");
		
		}
		
		
		return "redirect:/board/list" +pcri.getUriLink(); // 글 수정 전 게시판 리스트로 돌아가야함
	}

	// 글 삭제 URL 맵핑
	@PostMapping("/remove")
	public String remove(@RequestParam("bno") Long bno, PageCriteria pcri ,RedirectAttributes rttr) {

		log.info("remove => " + bno);
		if (service.remove(bno)) {
			rttr.addFlashAttribute("result", "success");
		}
		
		
		return "redirect:/board/list"+pcri.getUriLink();
	}

}
