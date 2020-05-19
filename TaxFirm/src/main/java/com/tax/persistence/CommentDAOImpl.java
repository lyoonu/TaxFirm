package com.tax.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.tax.domain.CommentVO;

@Repository
public class CommentDAOImpl implements CommentDAO {

	@Inject
	private SqlSession sql;
	
	//매퍼
	private static String namespace = "com.tax.mappers.commentMapper";
	
	//댓글 조회
	@Override
	public List<CommentVO> readComment(int bno) throws Exception {
		return sql.selectList(namespace + ".readComment", bno);
	}
	
	//댓글 작성
	@Override
	public void writeComment(CommentVO vo) throws Exception {
		sql.insert(namespace + ".writeComment", vo);
		
	}
	
	//특정댓글의 조회
	@Override
	public CommentVO readCommentSelect(int rno) throws Exception {
		return sql.selectOne(namespace + ".readCommentSelect", rno);
	}
	
	//댓글 삭제
	@Override
	public void commentDelete(CommentVO vo) throws Exception {
		sql.delete(namespace + ".deleteComment", vo);
		
	}
	
	
}
