package com.tax.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.tax.domain.MemberVO;
import com.tax.service.MemberService;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Inject
	MemberService service;
	
	//회원가입 폼으로 이동할 때에는 get메소드로 타서 오고, 전송버튼 눌렀을 경우 post메소드를 타고오게끔 한다.
	//회원가입 get  
	//하지만, 이 프로젝트에서는 모달창으로 nav에 동시에 존재하기때문에 불필요한거같다.
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public void getRegister() throws Exception {
		logger.info("get register");
	}
	
	//회원가입 post
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public String postRegister(MemberVO vo)throws Exception{
		logger.info("post register");
		
		service.register(vo);
		
		return "redirect:/";
	}
	
	//로그인//String loginWay 로 바꿔도 실행되는지 확인해볼것
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(MemberVO vo, HttpServletRequest req, RedirectAttributes rttr) throws Exception{
		logger.info("post login");
		
		HttpSession session = req.getSession();
		
		MemberVO login = service.login(vo);
		
		if(login == null) {
			session.setAttribute("member", null);
			rttr.addFlashAttribute("msg", false);
		}else {
			session.setAttribute("member", login);
		}
		
		return "redirect:/";
		
	}
	
	//로그아웃
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logout(HttpSession session) throws Exception{
		logger.info("post logout");
		
		session.invalidate();
		
		return "redirect:/";
		
	}
	
	//회원정보 비밀번호 수정 get
	@RequestMapping(value="/modify", method=RequestMethod.GET)
	public void getModify() throws Exception{
		logger.info("get modify");
		
	}
	
	//회원정보 비밀번호 수정 post
	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String postModify(HttpSession session, MemberVO vo) throws Exception {
		logger.info("post modify");
	 
		service.modify(vo);
	 
		session.invalidate();
	 
		return "redirect:/";
	
	}
	
	//회원 탈퇴 get
	@RequestMapping(value = "/withdraw", method = RequestMethod.GET)
	public void getWithdraw() throws Exception{
		logger.info("get withdraw");
		
	}
	
	//회원 탈퇴 post
	@RequestMapping(value = "/withdraw", method = RequestMethod.POST)
	public String postWithdraw(HttpSession session, MemberVO vo, RedirectAttributes rttr) throws Exception{
		logger.info("post withdraw");
		
		MemberVO member = (MemberVO)session.getAttribute("member");//받아오는 데이터타입은 Object이기에 MemberVO로 형변환
		
		String oldPass = member.getUserPass();
		String newPass = vo.getUserPass();
		
		if(!(oldPass.equals(newPass))) {
			rttr.addFlashAttribute("msg2", false);
			return "redirect:/member/withdraw";
		}
		
		service.withdraw(vo);
		
		session.invalidate();
		
		return "redirect:/";
		
	}
	
	//아이디 중복확인 (Ajax를 위해서 ResponseBody 이용)
	@ResponseBody
	@RequestMapping(value = "/idCheck", method = RequestMethod.POST)
	public int postIdCheck(HttpServletRequest req) throws Exception{
		logger.info("post idCheck");
		
		String userId = req.getParameter("userId");
		MemberVO idCheck = service.idCheck(userId);
		
		int result = 0;
		
		if(idCheck != null) {
			result = 1;
		}
		
		return result;		
			
	}
	
	
}











