package kr.co.chat;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.chat.dao.ChatDAO;
import kr.co.chat.dto.CHATDTO;

@Controller
public class ChatdbController {


	ChatDAO dao;
	
	
	public void setDao(ChatDAO dao) {
		this.dao = dao;
	}
	

	
	
	
}
