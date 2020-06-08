package kr.co.chat.dao;



import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.chat.dto.CHATDTO;
import kr.co.chat.dto.MemberDTO;



@Repository
public class ChatDAOImple implements ChatDAO {
	
	private static final String NAMESPACE = "kr.co.chat.chatMapper";
	
	
	@Inject
	private SqlSession session;


	@Override
	public List<CHATDTO> getchat(int roomId) {
		System.out.println("여기온다"+roomId);
		return session.selectList(NAMESPACE+".getchat",roomId);
	}


	@Override
	public List<MemberDTO> getid(String assemblename) {
		// TODO Auto-generated method stub
		return session.selectList(NAMESPACE+".getmember",assemblename);
	}
	
	
	

	
}
