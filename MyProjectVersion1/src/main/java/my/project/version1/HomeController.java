package my.project.version1;

import java.io.IOException;
import java.lang.annotation.Retention;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import my.project.dto.TeamBoardDto;
import my.project.dto.UserDto;
import my.project.service.MemberServiceImpl;
import my.project.test.EasyProfileDto;
import my.project.test.ProfileDto;
import my.project.test.ProfileDto2;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	

	@Autowired
	private MemberServiceImpl service;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {return "index";}
	


	
}
