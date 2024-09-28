package com.e.d.model.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.e.d.model.mapper.NoticeBoardMapper;
import com.e.d.model.vo.NoticeBoardVo;

@Service
public class NoticeBoardService {
	
	private NoticeBoardMapper mapper;
	
	public NoticeBoardService(NoticeBoardMapper mapper) {
		this.mapper = mapper;
	}
	
	public List<NoticeBoardVo> selectAllNoticeBoard() {
		return mapper.selectAllNoticeBoard();
	}
	
}
