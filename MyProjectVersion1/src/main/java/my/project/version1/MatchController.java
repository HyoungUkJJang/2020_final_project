package my.project.version1;

import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import my.project.dto.MessageDto;
import my.project.dto.TeamMatchDto;
import my.project.service.MemberServiceImpl;

@Controller
public class MatchController {

	
	@Autowired
	private MemberServiceImpl service;
	
	// 메세지보내기
	@RequestMapping(value = "/sendmsg", method = RequestMethod.POST)
	public String sendmsg(HttpSession session,Locale locale, Model model, MessageDto msgdto) 
	{
		
		
		
		return "Board/BoardList.tiles";
	}
}
