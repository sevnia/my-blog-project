package com.e.d.model.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.e.d.model.mapper.BlogUserMapper;
import com.e.d.model.vo.BlogUserVo;

@Service
public class BlogUserService {
	
	private BlogUserMapper mapper;
	
	public BlogUserService(BlogUserMapper mapper) {
		this.mapper = mapper;
	}
	
	public void insertBlogUserInfo(String username, String useremail, String userpassword) {
		mapper.insertBlogUserInfo(username, useremail, userpassword);
	}
	
	public BlogUserVo selectLoginUser(String username, String useremail,  String userpassword) {
		return mapper.selectLoginUser(username, useremail, userpassword);
	}
	
	public List<BlogUserVo> all() {
		return mapper.all();
	}
	
	public List<BlogUserVo> selectByUsername(String username) {
		return mapper.selectByUsername(username);
	}
}
