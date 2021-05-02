package my.project.service;

import java.util.List;

import my.project.dto.NoticeDto;
import my.project.dto.TeamBoardApplyDto;
import my.project.dto.TeamBoardDto;
import my.project.dto.TeamMatchDto;
import my.project.dto.UserDto;
import my.project.test.ImgtestDto;
import my.project.test.ProfileDto;
import my.project.test.ProfileDto2;
import my.project.test.ProfileSkill;

public interface MemberService {
	public void userjoin(UserDto userdto);
	public UserDto userlogin(UserDto userdto);
	public void imgtest(ImgtestDto imgdto);
	public String idcheck(String userid);
	
	//유저 가져오기
	public UserDto getuser(String userid);
	//프로필 가져오기
	public ProfileDto2 getprofile(String userid);
	// 유저 알람개수 증가
	public void usernoticeup(String userid);
	
	// 프로필 공개 비공개
	public void secretchange(UserDto userdto);
	
	//프로필 1번입력
	public void profileset(String userid);
	public void profileinput1(ProfileDto2 profile);
	public void profileinput2(ProfileDto2 profile);
	public void profileinput3(ProfileDto2 profile);
	public void profileinput4(ProfileDto2 profile);
	public void profileinput5(ProfileDto2 profile);
	public void profileinput6(ProfileDto2 profile);
	public void profilepicture(UserDto userdto);
	
	
	/*----------- 팀 보드 서비스 -----------*/
	public void teamboardinsert(TeamBoardDto boarddto);
	public List<TeamBoardDto> teamboardselect();
	public void teamscannumUp(int boardnum);
	public TeamBoardDto teamboarddetail(int boardnum);
	public void teamapply(TeamBoardApplyDto applydto);
	public TeamBoardApplyDto teamapplyselect(TeamBoardApplyDto applydto);
	public List<TeamBoardDto> myteamboard(String userid);
	public List<TeamBoardApplyDto> teamapplycheck(int boardnum);
	public void teamapplyUp(int boardnum);
	public List<TeamBoardDto> applylist(String userid);
	public ProfileDto2 profilecheck(String userid);
	public void teammatch(TeamMatchDto matchdto);
	public List<TeamMatchDto> matchlist(String userid);
	public void noticeinsert(NoticeDto noticedto);
	public List<NoticeDto> noticeselect(String userid);
	public void teammatchcomplet(int boardnum);
			
	

}
