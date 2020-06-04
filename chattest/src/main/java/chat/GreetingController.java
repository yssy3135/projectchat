package chat;

import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.util.HtmlUtils;

@Controller
public class GreetingController {
	
	
	@MessageMapping("/hello")
	@SendTo("/topic/a")
	public Greeting greeting(HelloMessage message) throws Exception{
		System.out.println("메시지 컨트롤");
		System.out.println(message);
		Thread.sleep(1000);
		
		return new Greeting("Hello," +HtmlUtils.htmlEscape(message.getName()) + "!" + ":"+HtmlUtils.htmlEscape(message.getContents())    );
	}
	
	
	@MessageMapping("/welcome")
	@SendTo("/topic/{roomname}")
	public Greeting welcome(@PathVariable String roomname, HelloMessage message) throws Exception{
		System.out.println(message);
		Thread.sleep(1000);
		
		return new Greeting("Hello," +HtmlUtils.htmlEscape(message.getName())+"님 접속했습니다" );
	}

	
	
	
	
	
}
