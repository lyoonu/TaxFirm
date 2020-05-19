package com.tax.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.tax.domain.BoardVO;
import com.tax.domain.CommentVO;
import com.tax.domain.Criteria;
import com.tax.domain.PageMaker;
import com.tax.domain.SearchCriteria;
import com.tax.service.BoardService;
import com.tax.service.CommentService;

@Controller
@RequestMapping("/board/*")
public class BoardController {

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

	@Inject
	BoardService service;

	@Inject
	CommentService ComService;
	
	//글 작성 get
	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public void getWrite(HttpSession session, Model model) throws Exception {
		logger.info("get write");
		
	}

	//글 작성 post
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String postWrite(BoardVO vo) throws Exception {
		logger.info("post write");

		service.write(vo);

		return "redirect:/board/listSearch";//작업 완료 시 이동할 페이지
	}

	//글 목록
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public void list(Model model) throws Exception {
		logger.info("get list");

		List<BoardVO> list = service.list();

		model.addAttribute("list", list);
	}
	
	//글 조회
	@RequestMapping(value = "/read", method = RequestMethod.GET)
	public void getRead(@RequestParam("bno") int bno, 
								 	 @ModelAttribute("scri") SearchCriteria scri, Model model) throws Exception {
		logger.info("get read");

		BoardVO vo = service.read(bno);
		model.addAttribute("read", vo);
		model.addAttribute("scri",scri);
		
		//댓글조회
		List<CommentVO> comList = ComService.readComment(bno);
		model.addAttribute("comList", comList);
	}
	
	//글 수정
	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public void getModify(@RequestParam("bno") int bno, 
									   @ModelAttribute("scri") SearchCriteria scri, 
									   Model model) throws Exception {
		logger.info("get modify");

		BoardVO vo = service.read(bno);

		model.addAttribute("modify", vo);
		model.addAttribute("scri", scri);
	}

	//글 삭제
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public void getDelete(@RequestParam("bno") int bno, 
									   @ModelAttribute("scri") SearchCriteria scri,
									   Model model) throws Exception {
		logger.info("get delete");

		model.addAttribute("delete", bno); //삭제 시에는 글 번호만 구분하여 삭제하면 되기 때문
		model.addAttribute("scri", scri);
	}
	
	//글 수정 POST (값을 전송하기 위함)
	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String postModify(BoardVO vo,
										  @ModelAttribute("scri") SearchCriteria scri,
										  RedirectAttributes rttr) throws Exception {
		logger.info("post modify");

		service.update(vo);
		
		rttr.addAttribute("page", scri.getPage());
		rttr.addAttribute("perPageNum", scri.getPerPageNum());
		rttr.addAttribute("searchType", scri.getSearchType());
		rttr.addAttribute("keyword", scri.getKeyword());

		return "redirect:/board/listSearch";
	}

	//글 삭제 POST (값을 전송하기 위함)
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String postDelete(@RequestParam("bno") int bno,
										  @ModelAttribute("scri") SearchCriteria scri,
										  RedirectAttributes rttr) throws Exception {
		logger.info("post delete");

		service.delete(bno);

		rttr.addAttribute("page", scri.getPage());
		rttr.addAttribute("perPageNum", scri.getPerPageNum());
		rttr.addAttribute("searchType", scri.getSearchType());
		rttr.addAttribute("keyword", scri.getKeyword());
		
		return "redirect:/board/listSearch";
	}
	
	//글 목록 + 페이징 + 검색
	@RequestMapping(value = "/listSearch", method = RequestMethod.GET)
	public void listSearch(@ModelAttribute("scri") SearchCriteria scri, Model model) throws Exception {
		logger.info("get list search");

		List<BoardVO> list = service.listSearch(scri);
		model.addAttribute("list", list);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(service.listCount());
		model.addAttribute("pageMaker", pageMaker);
	}
	
	
	//댓글 작성
	@RequestMapping(value = "/commentWrite", method=RequestMethod.POST)
	public String commentWrite(CommentVO vo, SearchCriteria scri, RedirectAttributes rttr) throws Exception {
		logger.info("comment write");
		
		ComService.writeComment(vo);
		
		rttr.addAttribute("bno", vo.getBno());
		rttr.addAttribute("page", scri.getPage());
		rttr.addAttribute("perPageNum", scri.getPerPageNum());
		rttr.addAttribute("searchType", scri.getSearchType());
		rttr.addAttribute("keyword", scri.getKeyword());
		
		return "redirect:/board/read";
		
	}

	//댓글 삭제 POST
	@RequestMapping(value = "/commentDelete", method = RequestMethod.POST)
	public String commentDelete(CommentVO vo, SearchCriteria scri, RedirectAttributes rttr) throws Exception {
		logger.info("comment delete");
	 
		ComService.commentDelete(vo);
	 
		rttr.addAttribute("bno", vo.getBno());
		rttr.addAttribute("page", scri.getPage());
		rttr.addAttribute("perPageNum", scri.getPerPageNum());
		rttr.addAttribute("searchType", scri.getSearchType());
		rttr.addAttribute("keyword", scri.getKeyword());
	 
		return "redirect:/board/read";
	}
	
	//댓글 삭제 GET
	@RequestMapping(value = "/commentDelete", method = RequestMethod.GET)
	public void getCommentDelete(@RequestParam("rno") int rno,
								 @ModelAttribute("scri") SearchCriteria scri, 
								 Model model) throws Exception {
	 logger.info("comment delete");
	 
	 CommentVO vo = null;
	 
	 vo = ComService.readCommentSelect(rno);
	 
	 model.addAttribute("readComment", vo);
	 model.addAttribute("scri", scri);
	}
		
	
}
