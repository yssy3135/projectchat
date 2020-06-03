package chat;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;

import org.springframework.stereotype.Repository;

@Repository
public class ChatRoomRepository {

	
	// 여기서는 Map으로 구현하지만 db로 들어가야함
	private Map<String, ChatRoom> chatRoomMap;
	
	@PostConstruct
	private void init() {
		chatRoomMap = new LinkedHashMap<>();
	}
	
	
	public ChatRoom findRoomByID(String id) {
		return chatRoomMap.get(id);
	}
	
	public List<ChatRoom> findAllRoom(){
		
		List chatRooms = new ArrayList<>(chatRoomMap.values());
		Collections.reverse(chatRooms);
		
		return chatRooms;
	}
	
	
	
	public ChatRoom createChatRoom(String name) {
		ChatRoom chatRoom = ChatRoom.create(name);
		chatRoomMap.put(chatRoom.getRoomId(),chatRoom);
		
		return chatRoom;
		
	}
	
	
}
