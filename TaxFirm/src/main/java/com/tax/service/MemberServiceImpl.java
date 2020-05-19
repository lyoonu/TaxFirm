package com.tax.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.tax.domain.MemberVO;
import com.tax.persistence.MemberDAO;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	private MemberDAO dao;
	
	//회원가입
	@Override
	public void register(MemberVO vo) throws Exception {
		dao.register(vo);
	}
	
	//로그인
	@Override
	public MemberVO login(MemberVO vo) throws Exception {
		return dao.login(vo);
	}
	
	//회원정보 비밀번호 수정
	@Override
	public void modify(MemberVO vo) throws Exception {
		dao.modify(vo);
		
	}
	
	//회원 탈퇴
	@Override
	public void withdraw(MemberVO vo) throws Exception {
		dao.withdraw(vo);
		
	}
	
	//아이디 중복확인
	@Override
	public MemberVO idCheck(String userId) throws Exception {
		return dao.idCheck(userId);
		
	}	
	
	
	
}
