package chat;

import java.util.UUID;

public class ChatRoom {
	private String roomId;
	private String name;
	
	
	public static ChatRoom create(String name) {
		
		ChatRoom chatRoom = new ChatRoom();
		chatRoom.roomId = UUID.randomUUID().toString();
		chatRoom.name = name;
		
		
		
		return chatRoom;
		
		
	}
	public ChatRoom() {
		// TODO Auto-generated constructor stub
	}


	public String getRoomId() {
		return roomId;
	}


	public void setRoomId(String roomId) {
		this.roomId = roomId;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public ChatRoom(String roomId, String name) {
		super();
		this.roomId = roomId;
		this.name = name;
	}
	
	

}
