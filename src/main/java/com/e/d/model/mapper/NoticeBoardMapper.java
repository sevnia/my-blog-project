package com.e.d.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.e.d.model.vo.NoticeBoardVo;

@Mapper
public interface NoticeBoardMapper {
	List<NoticeBoardVo> selectAllNoticeBoard();
}
