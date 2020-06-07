package kr.co.chat;


import java.util.List;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.PathVariable;

import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.ResponseBody;


//@RequiredArgsConstructor 
//어노테이션은 final이나 @NonNull인 필드 값만 파라미터로 받는 생성자를 만들어줍니다

@Controller
@RequestMapping("/chatroom")
public class ChatRoomController {
	
	@Autowired
	private  ChatRoomRepository chatRoomRepository;
	


	// 채팅 리스트 화면
	@GetMapping("/room")
	public String room(Model model) {
		
		return "chatlist";
	}
	
	
	/*
	 * // 모든 채팅방 목록 반환
	 * 
	 * @GetMapping("/rooms")
	 * 
	 * @ResponseBody public ModelAndView roomlist(Model model){ ModelAndView mav =
	 * new ModelAndView();
	 * 
	 * 
	 * 
	 * System.out.println(chatRoomRepository.findAllRoom().isEmpty());
	 * mav.addObject("list", chatRoomRepository.findAllRoom());
	 * mav.setViewName("list");
	 * 
	 * 
	 * return mav; }
	 */
	
	// 모든 채팅방 목록 반환
	@GetMapping("/rooms")
	@ResponseBody
	public List<ChatRoom> room(HttpServletRequest req){
		System.out.println(req.getAttribute("id"));
		
		return chatRoomRepository.findAllRoom();
	}
	
	
	//채팅방 생성
	@RequestMapping("/room/{roomname}")
	//@ResponseBody
	public String createRoom(@PathVariable String roomname) {
		
		
		chatRoomRepository.createChatRoom(roomname);
	
		return "pop";
	}
	
	
//	public ChatRoom createRoom(@RequestParam String name) {
//		return chatRoomRepository.createChatRoom(name);
//	}
	
	//채팅방 입장
	@GetMapping("/enter/{roomId}")
	public String roomDetail(HttpServletRequest req,@PathVariable String roomId) {
		//model.addAttribute("roomId", roomId);
		
		//Model객체는 이용하여 view로 데이터전송
		//데이터 전송
		HttpSession session = req.getSession();
		session.setAttribute("id", "yssy3135");
		
		
		
		
		//return "/chat/roomdetail";
		return "stomp";
		
	}
	

	
	
}
