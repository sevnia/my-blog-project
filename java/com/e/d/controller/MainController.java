package com.e.d.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.e.d.model.service.BlogBoardService;
import com.e.d.model.service.BlogUserService;
import com.e.d.model.service.NoticeBoardService;
import com.e.d.model.vo.BlogBoardVo;
import com.e.d.model.vo.BlogUserVo;

import jakarta.servlet.http.HttpSession;

@Controller
public class MainController {
	
	private BlogBoardService boardService;
	private BlogUserService userService;
	private NoticeBoardService noticeService;
	
	public MainController(
			BlogBoardService boardService,
			BlogUserService userService,
			NoticeBoardService noticeService) {
		this.boardService = boardService;
		this.userService = userService;
		this.noticeService = noticeService;
	}
	
	@GetMapping("/")
	public String index(Model model) {
		List<BlogBoardVo> boardList = boardService.selectAllBoard();
		model.addAttribute("mainPageAllBoard", boardList);
		return "index";
	}
	
	@GetMapping("/signup")
	public String signup() {
		return "sign/signup";
	}
	
	@GetMapping("/signin")
	public String signin() {
		return "sign/signin";
	}
	
	@PostMapping("/insert")
	public String insertUser(
			@RequestParam String username,
			@RequestParam String useremail,
			@RequestParam String userpassword
	) {
		userService.insertBlogUserInfo(username, useremail, userpassword);
		return "redirect:/";
	}
	
	@PostMapping("/login")
	public String loginUser(
			@RequestParam String username,
			@RequestParam String useremail,
			@RequestParam String userpassword,
			HttpSession session
	) {
		// 회원가입한 유저가 맞는지 확인하는 로직
		BlogUserVo loginuser = userService.selectLoginUser(username, useremail, userpassword);
		
		if (loginuser != null && loginuser.getUserpassword().equals(userpassword)) {
			session.setAttribute("loginuser", loginuser);
		} else {
			System.out.println("이름, 이메일, 비번 중에 하나 틀림");
			return "redirect:/";
		}
		return "redirect:/";
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	@GetMapping("/blog")
	public String blogPage(Model model) {
		List<BlogBoardVo> boardList = boardService.selectAllBoard();
		model.addAttribute("AllBoard", boardList);
		return "blog/mainBlogPage";
	}
	
	@GetMapping("/blog/blogview")
	public String boardQueryString(
			@RequestParam String title,
			@RequestParam String writer,
			@RequestParam String blogcontent,
			Model model
	) {
		model.addAttribute("title", title);
		model.addAttribute("writer", writer);
		model.addAttribute("blogcontent", blogcontent);
		return "blog/blogview";
	}
	
	@GetMapping("/blog/write")
	public String writePage() {
		return "blog/blogWrite";
	}
	
	@GetMapping("/username/{username}")
    public String UserInfo(@PathVariable String username, Model model) {
		List<BlogUserVo> userlist = userService.selectByUsername(username);
		if (userlist != null) {
            model.addAttribute("Userinfo", userlist);
            return "user/userinfo";  // JSP 파일 이름
        } else {
            return "redirect:/";
        }
    }
	
	@PostMapping("/insertBoard")
	public String insertBoard(
			@RequestParam String title,
			@RequestParam String writer,
			@RequestParam String blogcontent,
			Model model
	) {
		boardService.insertBoard(title, writer, blogcontent);
		return "redirect:/";
	}
	
	@GetMapping("welcome")
	public String welcome() {
		return "home/welcome";
	}
	
	
	
}
