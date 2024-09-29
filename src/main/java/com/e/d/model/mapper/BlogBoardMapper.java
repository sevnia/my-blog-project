package com.e.d.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.e.d.model.vo.BlogBoardVo;

@Mapper
public interface BlogBoardMapper {
	List<BlogBoardVo> selectAllBoard();
	
	void insertBoard(String title, String writer, String blogcontent);
	
	BlogBoardVo selectBoardByTtileAndWrtier(@Param("title") String title, @Param("writer") String writer);
}
