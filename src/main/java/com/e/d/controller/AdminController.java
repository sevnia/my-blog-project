package com.e.d.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.e.d.model.service.BlogBoardService;
import com.e.d.model.service.BlogUserService;
import com.e.d.model.service.NoticeBoardService;
import com.e.d.model.vo.BlogBoardVo;
import com.e.d.model.vo.BlogUserVo;
import com.e.d.model.vo.NoticeBoardVo;

@Controller
@RequestMapping(value = "/11000011100100110110111010011101110", method = RequestMethod.GET)
public class AdminController {
	
	@Autowired
	private BlogBoardService boardService;
	
	@Autowired
	private BlogUserService userService;
	
	@Autowired
	private NoticeBoardService noticeService;
	
	@GetMapping
	public String adminIndex(Model model) {
		List<BlogUserVo> userlist = userService.all();	
		model.addAttribute("adminUserList", userlist);
		return "admin/mainAdmin";
	}
	
	@GetMapping("/board")
	public String board(Model model) {
		List<BlogBoardVo> boardlist = boardService.selectAllBoard();
		model.addAttribute("adminBoardList", boardlist);
		return "admin/boardAdmin";
	}
	
	@GetMapping("/notice")
	public String notice(Model model) {
		List<NoticeBoardVo> notice = noticeService.selectAllNoticeBoard();
		model.addAttribute("adminNoticeList", notice);
		return "admin/noticeAdmin";
	}
	
}
