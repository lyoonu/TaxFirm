package com.tax.service;

import java.util.List;

import com.tax.domain.CommentVO;

public interface CommentService {

	//댓글 조회
	public List<CommentVO> readComment(int bno) throws Exception;
	
	//댓글 작성
	public void writeComment(CommentVO vo) throws Exception;
	
	//특정댓글의 조회
	public CommentVO readCommentSelect(int rno) throws Exception;

	//댓글 삭제
	public void commentDelete(CommentVO vo) throws Exception;

}
