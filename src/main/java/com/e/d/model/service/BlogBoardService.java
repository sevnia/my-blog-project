package com.e.d.model.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.e.d.model.mapper.BlogBoardMapper;
import com.e.d.model.vo.BlogBoardVo;

@Service
public class BlogBoardService {

	private BlogBoardMapper mapper;
	
	public BlogBoardService(BlogBoardMapper mapper) {
		this.mapper = mapper;
	}
	
	public List<BlogBoardVo> selectAllBoard() {
		return mapper.selectAllBoard();
	}
	
	public void insertBoard(String title, String writer, String blogcontent) {
		mapper.insertBoard(title, writer, blogcontent);
	}
	
}
