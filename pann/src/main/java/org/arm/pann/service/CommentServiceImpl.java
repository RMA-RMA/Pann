package org.arm.pann.service;

import java.util.List;

import org.arm.pann.domain.CommentsDTO;
import org.arm.pann.domain.PageCriteria;
import org.arm.pann.mapper.CommentMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Service
public class CommentServiceImpl implements CommentService {

	@Autowired
	private CommentMapper mapper;

	@Override
	public int register(CommentsDTO comments) {
		// TODO Auto-generated method stub
		log.info("register = > " + comments);
		return mapper.insert(comments);
	}

	@Override
	public CommentsDTO get(Long cno) {
		// TODO Auto-generated method stub
		log.info("getread = > " + cno);
		return mapper.read(cno);
	}

	@Override
	public int modify(CommentsDTO comments) {
		// TODO Auto-generated method stub
		log.info("modify update = > " + comments);
		return mapper.update(comments);
	}

	@Override
	public int remove(Long cno) {
		// TODO Auto-generated method stub
		log.info("remove delete = > " + cno);
		return mapper.delete(cno);
	}

	@Override
	public List<CommentsDTO> getList(PageCriteria pcri, Long bno) {
		// TODO Auto-generated method stub
		log.info("getList listPaging = > " + bno);
		return mapper.listPaging(pcri,bno);
	}

	

	
	
	
	
}
