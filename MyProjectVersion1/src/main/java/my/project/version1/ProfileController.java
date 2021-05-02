package my.project.version1;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import my.project.dto.UserDto;
import my.project.service.MemberServiceImpl;
import my.project.test.ProfileDto2;

@Controller
public class ProfileController {

	@Autowired
	private MemberServiceImpl service;
	
	
	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public String IdCheck(HttpServletRequest request,HttpSession session) 
	{
		//return "Profile/Profile2/profile.tiles";
		return "Profile/Profile2/profile.tiles";
	}
	
	// 모달 프로필 입력 1번
	@RequestMapping(value = "/profileinput1", method = RequestMethod.POST)
	public String Profileinput1(HttpSession session ,Locale locale, Model model, ProfileDto2 profiledto) throws IOException 
	{	
		UserDto userdto = (UserDto)session.getAttribute("obj"); // 로그인시 obj이름으로 세션생성했음
		profiledto.setUserid(userdto.getUserid()); // 프로필 입력 아이디 셋팅
		service.profileinput1(profiledto); // 업데이트
		
		session.removeAttribute("profile"); //지우고 다시세팅
		session.setAttribute("profile",service.getprofile(profiledto.getUserid())); 
		
		return "Profile/Profile2/profile.tiles";
	}
	// 모달 프로필 입력 2번
	@RequestMapping(value = "/profileinput2", method = RequestMethod.POST)
	public String Profileinput2(HttpSession session ,Locale locale, Model model, ProfileDto2 profiledto) throws IOException 
	{	
		UserDto userdto = (UserDto)session.getAttribute("obj"); // 로그인시 obj이름으로 세션생성했음
		profiledto.setUserid(userdto.getUserid()); // 프로필 입력 아이디 셋팅
		service.profileinput2(profiledto); // 업데이트
		
		System.out.println(profiledto.getSkill_name1()+profiledto.getSkill_Value1());
		
		session.removeAttribute("profile"); //지우고 다시세팅
		session.setAttribute("profile",service.getprofile(profiledto.getUserid())); 
		return "Profile/Profile2/profile.tiles";
	}
	// 모달 프로필 입력 3번
	@RequestMapping(value = "/profileinput3", method = RequestMethod.POST)
	public String Profileinput3(HttpSession session ,Locale locale, Model model, ProfileDto2 profiledto) throws IOException 
	{	
		UserDto userdto = (UserDto)session.getAttribute("obj"); // 로그인시 obj이름으로 세션생성했음
		profiledto.setUserid(userdto.getUserid()); // 프로필 입력 아이디 셋팅
		service.profileinput3(profiledto); // 업데이트
		
		session.removeAttribute("profile"); //지우고 다시세팅
		session.setAttribute("profile",service.getprofile(profiledto.getUserid())); 
		return "Profile/Profile2/profile.tiles";
	}
	// 모달 프로필 입력 4번
	@RequestMapping(value = "/profileinput4", method = RequestMethod.POST)
	public String Profileinput4(HttpSession session ,Locale locale, Model model, ProfileDto2 profiledto) throws IOException 
	{	
		UserDto userdto = (UserDto)session.getAttribute("obj"); // 로그인시 obj이름으로 세션생성했음
		profiledto.setUserid(userdto.getUserid()); // 프로필 입력 아이디 셋팅
		service.profileinput4(profiledto); // 업데이트
		
		session.removeAttribute("profile"); //지우고 다시세팅
		session.setAttribute("profile",service.getprofile(profiledto.getUserid())); 
		
		return "Profile/Profile2/profile.tiles";
	}
	// 모달 프로필 입력 5번
	@RequestMapping(value = "/profileinput5", method = RequestMethod.POST)
	public String Profileinput5(HttpSession session ,Locale locale, Model model, ProfileDto2 profiledto) throws IOException 
	{	
		UserDto userdto = (UserDto)session.getAttribute("obj"); // 로그인시 obj이름으로 세션생성했음
		profiledto.setUserid(userdto.getUserid()); // 프로필 입력 아이디 셋팅
		service.profileinput5(profiledto); // 업데이트
		
		session.removeAttribute("profile"); //지우고 다시세팅
		session.setAttribute("profile",service.getprofile(profiledto.getUserid())); 
		
		return "Profile/Profile2/profile.tiles";
	}
	// 모달 프로필 입력 6번
	@RequestMapping(value = "/profileinput6", method = RequestMethod.POST)
	public String Profileinput6(HttpSession session ,Locale locale, Model model, ProfileDto2 profiledto) throws IOException 
	{	
		UserDto userdto = (UserDto)session.getAttribute("obj"); // 로그인시 obj이름으로 세션생성했음
		profiledto.setUserid(userdto.getUserid()); // 프로필 입력 아이디 셋팅
		service.profileinput6(profiledto); // 업데이트
		
		session.removeAttribute("profile"); //지우고 다시세팅
		session.setAttribute("profile",service.getprofile(profiledto.getUserid())); 
		
		return "Profile/Profile2/profile.tiles";
	}
	// 모달 프로필 입력 7번
	//@RequestParam("userimg") MultipartFile file;
	@RequestMapping(value = "/profilepicture", method = RequestMethod.POST)
	public String profilepicture(MultipartHttpServletRequest request,HttpSession session ,Locale locale, Model model) throws IOException 
	{	
		MultipartHttpServletRequest ex = (MultipartHttpServletRequest)request;
		Iterator<String> iterator = ex.getFileNames();
		MultipartFile file = null;
		
		while(iterator.hasNext())
		{
			System.out.println("여기 돌고있다ㅠㅠㅠㅠ");
			file = ex.getFile(iterator.next());
			String url3 = file.getOriginalFilename();
			File f = new File("C:\\Users\\dnr75\\Downloads\\MyProjectVersion1\\src\\main\\webapp\\resources\\myimage\\"+url3);
			file.transferTo(f);
			String userid = ((UserDto)session.getAttribute("obj")).getUserid();
			UserDto dto = new UserDto();
			dto.setUserid(userid);
			dto.setUserimg(url3);
			service.profilepicture(dto); //업데이트 
			
			UserDto userdto = service.getuser(userid);
			ProfileDto2 profile = service.getprofile(userid); //다시세팅
			session.setAttribute("obj", userdto);
			session.setAttribute("profile", profile); // 다시세팅
		}

		return "Profile/Profile2/profile.tiles";
	}
	
	// 프로필 공개/비공개 전환
	@RequestMapping(value = "/secretchange", method = RequestMethod.POST)
	public String secretchange(HttpSession session ,Locale locale, Model model, UserDto userdto) 
	{
		if(userdto.getSecret() == 0)
		{
			userdto.setSecret(1);
			service.secretchange(userdto);
		}
		else if(userdto.getSecret() == 1)
		{
			userdto.setSecret(0);
			service.secretchange(userdto);
		}

		userdto = service.getuser(userdto.getUserid());
		ProfileDto2 profile = service.getprofile(userdto.getUserid()); //다시세팅
		session.setAttribute("obj", userdto);
		session.setAttribute("profile", profile); // 다시세팅
		return "Profile/Profile2/profile.tiles";
	}
	
	/* 이미지 삽입 참고 
	@RequestParam("report") MultipartFile file
	@RequestMapping(value = "/imgtest", method=RequestMethod.POST)
	public String Imgtest(MultipartHttpServletRequest request) throws IOException 
	{	
		
		MultipartHttpServletRequest ex = (MultipartHttpServletRequest)request;
		Iterator<String> iterator = ex.getFileNames();
		MultipartFile file = null;
		
		while(iterator.hasNext())
		{
			file = ex.getFile(iterator.next());
			String url3 = file.getOriginalFilename();
			File f = new File("C:\\Users\\dnr75\\Desktop\\myprojectBackUp1\\MyProjectVersion1\\src\\main\\webapp\\resources\\myimage\\"+url3);
			file.transferTo(f);

			System.out.println("-----------------file start-------------------");
			System.out.println("name : "+file.getName());
			System.out.println("filename : "+file.getOriginalFilename());
			System.out.println("size : "+file.getSize());
			System.out.println("-------------------END------------------------");
		}
		
		return "index";
	}
	*/
	
}
