package com.javaex.model;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BookDao {
	@Autowired
	private SqlSession sqlSession;
	
	public BookDao() {
	}	
	public BookDao(SqlSession sqlSession) {
		this.sqlSession = sqlSession;		
	}
	
	public List<BookVo> getList(){	
		return sqlSession.selectList("booklist.getList");	
	}
}
