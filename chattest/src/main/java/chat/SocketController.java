package chat;

import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionContext;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

@Controller
public class SocketController  {

		@RequestMapping("/chat")
		public String viewChattingPage(HttpServletRequest req) {
			
		
			
			HttpSession session = req.getSession();
			
			session.setAttribute("id", req.getParameter("id"));
			
			
			return "stomp";
		}
		

		
		@RequestMapping("/login")
		public String loginPage(HttpServletRequest req) {
			

			
			
			return "login";
		}
		
		
		
	
}
