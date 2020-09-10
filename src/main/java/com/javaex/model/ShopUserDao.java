package com.javaex.model;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ShopUserDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public ShopUserDao(SqlSession sqlsession) {
		this.sqlSession = sqlsession;
	}
	
	public ShopUserVo loginCheck(String email) {		
		return sqlSession.selectOne("ShopUser.getUser",email);
	}
}