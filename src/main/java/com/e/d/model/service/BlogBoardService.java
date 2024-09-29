package com.e.d.model.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
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
	
	public BlogBoardVo selectBoardByTtileAndWrtier(@Param("title") String title, @Param("writer") String writer) {
		return mapper.selectBoardByTtileAndWrtier(title, writer);
	}
	
}
