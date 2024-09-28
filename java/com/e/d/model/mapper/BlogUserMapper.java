package com.e.d.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.e.d.model.vo.BlogUserVo;

@Mapper
public interface BlogUserMapper {
	/** 회원가입한 모든 유저의 정보를 가지는 함수 */
	List<BlogUserVo> all();
	
	void insertBlogUserInfo(String username, String useremail, String userpassword);
	BlogUserVo selectLoginUser(String username, String useremail, String userpassword);
	List<BlogUserVo> selectByUsername(String username);
}
