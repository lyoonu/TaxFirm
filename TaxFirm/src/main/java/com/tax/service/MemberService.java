package com.tax.service;

import com.tax.domain.MemberVO;

public interface MemberService {

	//가입
	public void register(MemberVO vo) throws Exception;
	
	//조회(로그인 위함)
	public MemberVO login(MemberVO vo) throws Exception;
	
	//회원정보 비밀번호 수정
	public void modify(MemberVO vo) throws Exception;
	
	//회원 탈퇴
	public void withdraw(MemberVO vo) throws Exception;
	
	//아이디 중복확인
	public MemberVO idCheck(String userId) throws Exception;
	
}
