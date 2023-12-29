package org.arm.pann.controller;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import lombok.extern.log4j.Log4j2;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/**/servlet-context.xml"})
@Log4j2
public class BoardControllerTest {

	@Autowired
	private WebApplicationContext ctx;

	private MockMvc mockMvc; // 가짜 mvc
	
	// 가짜 준비상태 만들기
	@Before
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
	}

	//게시판 리스트 조회 
	@Test
	public void testList() throws Exception {
		
		log.info(
				mockMvc.perform(MockMvcRequestBuilders.get("/board/list"))
				.andReturn().getModelAndView().getModelMap()

		);

	}
	
	//페이징 게시판 리스트 조회 
	@Test
	public void testListPaging() throws Exception {
		
		log.info(
				mockMvc.perform(MockMvcRequestBuilders.get("/board/list")
						.param("pageNum","2")
						.param("amount","10"))
						.andReturn().getModelAndView().getModelMap()

		);

	}

	//새글 등록 후 게시판 리스트로 돌아가기 
	@Test
	public void testRegister() throws Exception {
		
		String resultPage = mockMvc.perform(MockMvcRequestBuilders.post("/board/register")
				.param("title","새글등록 *")
				.param("content","새글내용 *")
				.param("writer","새작성자 *")).andReturn().getModelAndView().getViewName();
		
		log.info(resultPage);
	}

	//특정 글 조회 
	@Test
	public void testGet() throws Exception {
		
		log.info(
				mockMvc.perform(MockMvcRequestBuilders.get("/board/get")
						.param("bno","44")).andReturn().getModelAndView().getModelMap());		
	}

	//글 수정 후 게시판 리스트로 돌아가기  
	@Test
	public void testModify() throws Exception {
		
		String resultPage = mockMvc.perform(MockMvcRequestBuilders.post("/board/modify")
				.param("bno","45")
				.param("title","수정등록 *")
				.param("content","수정 내용 *")).andReturn().getModelAndView().getViewName();
		
		log.info(resultPage);
		
	}

	//글 삭제 후 게시판 리스트로 돌아가기  
	@Test
	public void testRemove() throws Exception {
		
		String resultPage = mockMvc.perform(MockMvcRequestBuilders.post("/board/remove")
				.param("bno","44")).andReturn().getModelAndView().getViewName();
		
		log.info(resultPage);
	}


}
