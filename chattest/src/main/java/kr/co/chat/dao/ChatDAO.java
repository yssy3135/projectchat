package kr.co.chat.dao;

import java.util.List;

import kr.co.chat.dto.CHATDTO;
import kr.co.chat.dto.MemberDTO;
import kr.co.chat.dto.MemberidDTO;

public interface ChatDAO {
	
	public List<CHATDTO> getchat(int roomname);
	public List<MemberDTO> getid(String assemblename);
	
	
	
}
