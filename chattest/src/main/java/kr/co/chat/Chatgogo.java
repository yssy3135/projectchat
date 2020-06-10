package kr.co.chat;

public class Chatgogo {
	private int roomid;
	private String assemblename;
	private String chatcontents;
	private int senderno;
	
	
	
	public Chatgogo() {
		// TODO Auto-generated constructor stub
	}
	
	public Chatgogo(int roomid, String chatcontents, int senderno) {
		super();
		this.roomid = roomid;
		this.chatcontents = chatcontents;
		this.senderno = senderno;
	}
	
	
	
	
	
	public Chatgogo(int roomid, String assemblename, String chatcontents, int senderno) {
		super();
		this.roomid = roomid;
		this.assemblename = assemblename;
		this.chatcontents = chatcontents;
		this.senderno = senderno;
	}





	public int getRoomid() {
		return roomid;
	}
	public void setRoomid(int roomid) {
		this.roomid = roomid;
	}
	public String getChatcontents() {
		return chatcontents;
	}
	public void setChatcontents(String chatcontents) {
		this.chatcontents = chatcontents;
	}
	public int getSenderno() {
		return senderno;
	}
	public void setSenderno(int senderno) {
		this.senderno = senderno;
	}


	public String getAssemblename() {
		return assemblename;
	}


	public void setAssemblename(String assemblename) {
		this.assemblename = assemblename;
	}
	
	
	
	
	
}
