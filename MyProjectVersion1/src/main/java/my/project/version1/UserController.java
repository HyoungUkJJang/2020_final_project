package my.project.version1;

import java.io.IOException;
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

import my.project.dto.NoticeDto;
import my.project.dto.TeamBoardDto;
import my.project.dto.UserDto;
import my.project.service.MemberServiceImpl;
import my.project.test.ProfileDto2;

@Controller
public class UserController {
	
	
	@Autowired
	private MemberServiceImpl service;
	
	
	@RequestMapping(value = "/check", method = RequestMethod.POST)
	@ResponseBody
	public String IdCheck(@RequestParam("username") String data,HttpServletRequest request) 
	{
		System.out.println("---- ID 체크 -----");
		String result = service.idcheck(data);
		
		return result;
	}
	
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String JoinData(HttpSession session,Locale locale, Model model, UserDto userinfo) throws IOException 
	{	
		System.out.println("회원가입 정보"+userinfo);
			
		userinfo.setUserimg("standard.png"); // 기본이미지 경로 세팅해주기
		service.userjoin(userinfo); // 회원가입 완료시켜주기
		service.profileset(userinfo.getUserid()); //프로필 기본값 셋팅
		
		return "JoinResult";
	}
	
	// 로그아웃 GET
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String LogoutProc(HttpSession session,Locale locale, Model model, UserDto userinfo) 
	{	
		session.invalidate();
		return "index";
	}
	
	// LOGIN POST
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String LoginProc(HttpSession session,Locale locale, Model model, UserDto userinfo) 
	{	
		UserDto result = service.userlogin(userinfo);

		if(result == null)
		{	
			System.out.println("로그인실패");
			return "index";
		}
		else
		{
			System.out.println(result.getUserimg());
			//result.setUserimg("./resources/myimage/"+result.getUserimg()); // 이미지 경로 세팅 안해도 될거같다.
			System.out.println("로그인 성공");	
			ProfileDto2 profile = service.getprofile(result.getUserid());
			List<TeamBoardDto> teamboard = service.teamboardselect(); //게시판 리스트 가져오기
			List<NoticeDto> noticedto = service.noticeselect(result.getUserid());
			
			if(teamboard.size() == 0)
				session.setAttribute("teamboard", null); // 게시판 게시글 없을때 널 세팅
			else
				session.setAttribute("teamboard", teamboard); //게시판 세팅
			
			if(noticedto.size() == 0)
				session.setAttribute("notice", null);
			else
				session.setAttribute("notice", noticedto); // 알림판 세팅
			
			session.setAttribute("obj", result); // 아이디정보 세션 세팅
			session.setAttribute("profile", profile); // 프로필정보 세션 세팅
			
			return "Board/BoardList.tiles";
		}
	}
	
	
	

	
}
