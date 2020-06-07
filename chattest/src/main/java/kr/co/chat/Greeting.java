package kr.co.chat;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Greeting {
	
	private String content;
	private String sendTime;
	
	public Greeting() {

		// TODO Auto-generated constructor stub
	}
	public String getContent() {
		return content;
	}
	public Greeting(String content) {
		this.content = content;
	}
	public Greeting(String content,String sendTime) {
		
		this.content = content;
		this.sendTime = sendTime;
	
		
	}
	public String getSendTime() {
		return sendTime;
	}
	public void setSendTime(String sendTime) {
		this.sendTime = sendTime;
	}
	
	

}
