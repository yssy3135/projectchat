package kr.co.chat.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


@Repository
public class ChatDAO {
	
	private static final String NAMESPACE = "kr.co.chat.chatMepper";
	
	
	@Inject
	private SqlSession session;
	
	
	

	
}
