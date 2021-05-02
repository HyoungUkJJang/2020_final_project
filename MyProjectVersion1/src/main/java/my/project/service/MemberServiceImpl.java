package my.project.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import my.project.dao.TeamBoardDAO;
import my.project.dao.UserDAO;
import my.project.dto.NoticeDto;
import my.project.dto.TeamBoardApplyDto;
import my.project.dto.TeamBoardDto;
import my.project.dto.TeamMatchDto;
import my.project.dto.UserDto;
import my.project.test.ImgtestDto;
import my.project.test.ProfileDto2;

@Service
public class MemberServiceImpl implements MemberService 
{

	@Autowired
	private SqlSession session;
	// 회원가입
	@Override
	public void userjoin(UserDto userdto)
	{
		session.getMapper(UserDAO.class).userjoin(userdto);
		System.out.println("로그인호출");
	}
	//로그인
	@Override
	public UserDto userlogin(UserDto userdto){return session.getMapper(UserDAO.class).userlogin(userdto);}
	//이미지테스트
	@Override
	public void imgtest(ImgtestDto imgdto){session.getMapper(UserDAO.class).imgtest(imgdto);}
	//아이디체크
	@Override
	public String idcheck(String userid)
	{
		String result = session.getMapper(UserDAO.class).idcheck(userid);
		
		if(result == null)
			return "succeess";
		else
			return "fail";
	}
	//유저정보 가져오기
	public UserDto getuser(String userid)
	{
		return session.getMapper(UserDAO.class).getuser(userid);
	}
	
	//유저 알람개수 증가
	public void usernoticeup(String userid)
	{
		session.getMapper(UserDAO.class).usernoticeup(userid);
	}
	
	// 프로필 부분
	@Override
	public void profileset(String userid){session.getMapper(UserDAO.class).profileset(userid);}
	@Override
	public ProfileDto2 getprofile(String userid){return session.getMapper(UserDAO.class).getprofile(userid);}
	@Override
	public void profileinput1(ProfileDto2 profile){session.getMapper(UserDAO.class).profileinput1(profile);}
	@Override
	public void profileinput2(ProfileDto2 profile){session.getMapper(UserDAO.class).profileinput2(profile);}
	@Override
	public void profileinput3(ProfileDto2 profile){session.getMapper(UserDAO.class).profileinput3(profile);}
	@Override
	public void profileinput4(ProfileDto2 profile){session.getMapper(UserDAO.class).profileinput4(profile);}
	@Override
	public void profileinput5(ProfileDto2 profile){session.getMapper(UserDAO.class).profileinput5(profile);}
	@Override
	public void profileinput6(ProfileDto2 profile){session.getMapper(UserDAO.class).profileinput6(profile);}
	
	// 팀모집 게시판
	@Override
	public void teamboardinsert(TeamBoardDto boarddto){session.getMapper(TeamBoardDAO.class).teamboardinsert(boarddto);}
	@Override
	public List<TeamBoardDto> teamboardselect()
	{
		return session.getMapper(TeamBoardDAO.class).teamboardselect();
	}
	@Override
	public void teamscannumUp(int boardnum)
	{
		session.getMapper(TeamBoardDAO.class).teamscannumUp(boardnum);
	}
	@Override
	public TeamBoardDto teamboarddetail(int boardnum)
	{
		return session.getMapper(TeamBoardDAO.class).teamboarddetail(boardnum);
	}
	@Override
	public void teamapply(TeamBoardApplyDto applydto)
	{
		session.getMapper(TeamBoardDAO.class).teamapply(applydto);
	}
	@Override
	public TeamBoardApplyDto teamapplyselect(TeamBoardApplyDto applydto)
	{
		return session.getMapper(TeamBoardDAO.class).teamapplyselect(applydto);
	}
	@Override
	public List<TeamBoardDto> myteamboard(String userid)
	{
		return session.getMapper(TeamBoardDAO.class).myteamboard(userid);
	}
	@Override
	public List<TeamBoardApplyDto> teamapplycheck(int boardnum)
	{
		return session.getMapper(TeamBoardDAO.class).teamapplycheck(boardnum);
	}
	@Override
	public void teamapplyUp(int boardnum)
	{
		session.getMapper(TeamBoardDAO.class).teamapplyUp(boardnum);
	}
	@Override
	public List<TeamBoardDto> applylist(String userid)
	{
		return session.getMapper(TeamBoardDAO.class).applylist(userid);
	}
	@Override
	public ProfileDto2 profilecheck(String userid)
	{
		return session.getMapper(TeamBoardDAO.class).profilecheck(userid);
	}
	@Override
	public void teammatch(TeamMatchDto matchdto)
	{
		session.getMapper(TeamBoardDAO.class).teammatch(matchdto);
	}
	@Override
	public List<TeamMatchDto> matchlist(String userid)
	{
		return session.getMapper(TeamBoardDAO.class).matchlist(userid);
	}
	@Override
	public void noticeinsert(NoticeDto noticedto)
	{
		session.getMapper(TeamBoardDAO.class).noticeinsert(noticedto);
	}
	@Override
	public List<NoticeDto> noticeselect(String userid)
	{
		return session.getMapper(TeamBoardDAO.class).noticeselect(userid);
	}
	@Override
	public void teammatchcomplet(int boardnum)
	{
		session.getMapper(TeamBoardDAO.class).teammatchcomplet(boardnum);
	}
	@Override
	public void profilepicture(UserDto userdto)
	{
		session.getMapper(UserDAO.class).profilepicture(userdto);
	}
	@Override
	public void secretchange(UserDto userdto)
	{
		session.getMapper(UserDAO.class).secretchange(userdto);
	}
}

