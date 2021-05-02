package my.project.version1;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import my.project.dto.NoticeDto;
import my.project.dto.TeamBoardApplyDto;
import my.project.dto.TeamBoardDto;
import my.project.dto.TeamMatchDto;
import my.project.dto.UserDto;
import my.project.service.MemberServiceImpl;
import my.project.test.ProfileDto2;


@Controller
public class TeamBoardController {

	@Autowired
	private MemberServiceImpl service;
	
	@RequestMapping(value = "/TeamBoardList", method = RequestMethod.GET)
	public String teamboardList(HttpSession session,Locale locale, Model model) {
			List<TeamBoardDto> teamboard = service.teamboardselect();
			if(teamboard.size() == 0)
				session.setAttribute("teamboard", null); // 게시판 게시글 없을때 널 세팅
			else
				session.setAttribute("teamboard", teamboard); //게시판 세팅
			
			return "Board/BoardList.tiles";
	}
	
	@RequestMapping(value = "/TeamBoardInput", method = RequestMethod.GET)
	public String teamboardinput(HttpSession session,Locale locale, Model model) {
			return "Board/TeamBoardInput.tiles";
	}
	
	// 팀모집 게시판 작성
	@RequestMapping(value = "/teamboardinput", method = RequestMethod.POST)
	public String teamboardinput(HttpSession session,Locale locale, Model model, TeamBoardDto boarddto) 
	{
		System.out.println("----팀 모집 게시판 작성 호출 -----");
		System.out.println(boarddto);
		service.teamboardinsert(boarddto);
		System.out.println("-------------------------");
		List<TeamBoardDto> teamboard = service.teamboardselect();
		session.setAttribute("teamboard", teamboard); //다시세팅
		return "Board/BoardList.tiles";
	}
	
	// 팀 모집 게시판 자세히보기
	@RequestMapping(value = "/TeamBoardDetail", method = RequestMethod.GET)
	public String teamboarddetail(@RequestParam("boardnum") int boardnum,HttpSession session,Locale locale, Model model) 
	{
		service.teamscannumUp(boardnum);
		TeamBoardDto detail = service.teamboarddetail(boardnum);
		
		
		String applyid = ((UserDto)session.getAttribute("obj")).getUserid();
		
		TeamBoardApplyDto selectdto = new TeamBoardApplyDto();
		selectdto.setBoardnum(boardnum);
		selectdto.setApplyuserid(applyid);
		
		TeamBoardApplyDto ApplyResult = service.teamapplyselect(selectdto);
		System.out.println(ApplyResult);
		if(ApplyResult == null)
			model.addAttribute("applystate", null);
		else
			model.addAttribute("applystate", ApplyResult);
			
		
		
		model.addAttribute("detail",detail);
		return "Board/BoardDetail.tiles";
		
	}
	
	// 팀 프로젝트 지원하기
	@RequestMapping(value = "/teamapply", method = RequestMethod.POST)
	public String teamapply(HttpSession session,Locale locale, Model model, TeamBoardApplyDto applydto) 
	{
		System.out.println("----프로젝트 지원 컨트롤러 호출 -----");
		service.teamapply(applydto); // 지원자 게시판에 넣기
		service.teamapplyUp(applydto.getBoardnum()); // 지원자수 증가
		service.usernoticeup(applydto.getMasteruserid()); // 알람개수 증가
		
		NoticeDto noticedto = new NoticeDto();
		noticedto.setUserid(applydto.getMasteruserid());
		noticedto.setContent(applydto.getApplyuserid()+"님이 프로젝트 신청을 하였습니다.");
		service.noticeinsert(noticedto); // 알림게시판에 삽입
		
		List<TeamBoardDto> teamboard = service.teamboardselect(); // 게시글 다시세팅해서 넘겨주기
		if(teamboard.size() == 0)
			session.setAttribute("teamboard", null); // 게시판 게시글 없을때 널 세팅
		else
			session.setAttribute("teamboard", teamboard); //게시판 세팅
		
		System.out.println("----------------------------------");
		return "Board/BoardList.tiles";
	}
	
	//내가 쓴 글 확인
	@RequestMapping(value = "/myboardlist", method = RequestMethod.GET)
	public String myboardlist(HttpSession session,Locale locale, Model model) 
	{
		System.out.println("----내가쓴글 확인  컨트롤러 호출 -----");
		System.out.println(((UserDto)session.getAttribute("obj")).getUserid());
		List<TeamBoardDto> board = service.myteamboard(((UserDto)session.getAttribute("obj")).getUserid());
		model.addAttribute("myboard", board);
		System.out.println("----------------------------------");
		return "Board/MyBoardList.tiles";
	}
	
	// 신청자 확인
	@RequestMapping(value = "/applycheck", method = RequestMethod.GET)
	public String applycheck(@RequestParam("boardnum") int boardnum,HttpSession session,Locale locale, Model model) 
	{
		System.out.println("----신청자 확인  컨트롤러 호출 -----");
		List<TeamBoardApplyDto> board = service.teamapplycheck(boardnum);
		TeamBoardDto detail = service.teamboarddetail(boardnum);
		
		session.setAttribute("applyboardnum", boardnum); // 게시글 번호 세션할당
		model.addAttribute("detail",detail);
		model.addAttribute("apply", board);
		System.out.println("----------------------------------");
		return "Board/ApplyCheck.tiles";
	}

	// 내가 지원한 게시판
	@RequestMapping(value = "/applylist", method = RequestMethod.GET)
	public String applylist(@RequestParam("userid") String userid,HttpSession session,Locale locale, Model model)
	{
		System.out.println(userid);
		List<TeamBoardDto> apply = service.applylist(userid);
		if(apply.size()==0)
			model.addAttribute("myboard", null);
		else
			model.addAttribute("myboard", apply);
		return "Board/MyApplyBoardList.tiles";
	}
	// 지원한 사람 프로필보기
	@RequestMapping(value = "/profilecheck", method = RequestMethod.GET)
	public String profilecheck(@RequestParam("userid") String userid,HttpSession session,Locale locale, Model model)
	{
		// 유저정보를 가져온다.
		UserDto userdto = service.getuser(userid);
		userdto.setUserimg("./resources/myimage/"+userdto.getUserimg()); // 이미지 경로 세팅
		model.addAttribute("obj", userdto); // 모델세팅
		ProfileDto2 profile = service.getprofile(userid);
		model.addAttribute("profile", profile);
		
		return "Profile/Profile2/profilecheck";
	}
	
	// 팀 매치시키기
	@RequestMapping(value = "/match", method = RequestMethod.POST)
	public String match(HttpSession session,Locale locale, Model model, TeamMatchDto matchdto) 
	{
		// 1. 매치테이블에 데이터 삽입  2. 팀보드 스테이트 리절트에 1로 완료되었다는 업데이트  3. 테이블 라벨로 변경
		service.teammatch(matchdto); // 1번수행
		int boardnum = (int)session.getAttribute("applyboardnum"); // 2번 수행을위해 보드넘버 가져오기
		service.teammatchcomplet(boardnum); // 2번수행하기
		return "Board/BoardList.tiles";
	}
	
	// 매치된 게시판
	@RequestMapping(value = "/matchlist", method = RequestMethod.GET)
	public String matchlist(@RequestParam("userid") String userid,HttpSession session,Locale locale, Model model)
	{
		
		List<TeamMatchDto> match = service.matchlist(userid);
		
		if(match.size()==0)
			model.addAttribute("mymatch", null);
		else
			model.addAttribute("mymatch", match);
		
		return "Board/TeamMatch.tiles";
	}
}
