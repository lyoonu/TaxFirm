package com.tax.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.tax.domain.CommentVO;
import com.tax.persistence.CommentDAO;

@Service
public class CommentServiceImpl implements CommentService {

	@Inject
	private CommentDAO dao;
	
	//댓글 조회
	@Override
	public List<CommentVO> readComment(int bno) throws Exception {
		return dao.readComment(bno);
	}
	
	//댓글 작성
	@Override
	public void writeComment(CommentVO vo) throws Exception {
		dao.writeComment(vo);
		
	}
	
	//특정댓글의 조회
	@Override
	public CommentVO readCommentSelect(int rno) throws Exception {
		return dao.readCommentSelect(rno);
	}
	
	//댓글 삭제
	@Override
	public void commentDelete(CommentVO vo) throws Exception {
		dao.commentDelete(vo);
		
	}
	
	
	
	
}
