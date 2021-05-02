package my.project.dao;


import java.util.List;

import my.project.dto.NoticeDto;
import my.project.dto.TeamBoardApplyDto;
import my.project.dto.TeamBoardDto;
import my.project.dto.TeamMatchDto;
import my.project.test.ProfileDto2;

public interface TeamBoardDAO {
	
	// 팀 게시판 입력
	public void teamboardinsert(TeamBoardDto boarddto);
	// 팀 게시글 목록 불러오기
	public List<TeamBoardDto> teamboardselect();
	// 팀 게시글 조회수 업
	public void teamscannumUp(int boardnum);
	// 팀  게시글 자세히보기
	public TeamBoardDto teamboarddetail(int boardnum);
	// 팀 게시글 지원하기
	public void teamapply(TeamBoardApplyDto applydto);
	// 팀 게시글 지원확인
	public TeamBoardApplyDto teamapplyselect(TeamBoardApplyDto applydto);
	// 내가 쓴 글 확인
	public List<TeamBoardDto> myteamboard(String userid);
	// 지원자 확인
	public List<TeamBoardApplyDto> teamapplycheck(int boardnum);
	// 지원자 수 증가
	public void teamapplyUp(int boardnum);
	// 내가 지원한 게시글
	public List<TeamBoardDto> applylist(String userid);
	// 지원자 프로필 확인하기
	public ProfileDto2 profilecheck(String userid);
	// 매치시키기
	public void teammatch(TeamMatchDto matchdto);
	// 매치게시글 확인
	public List<TeamMatchDto> matchlist(String userid);
	// Notice 게시글에 삽입
	public void noticeinsert(NoticeDto noticedto);
	// notice 가져오기
	public List<NoticeDto> noticeselect(String userid);
	// 팀매치 완료
	public void teammatchcomplet(int boardnum);
	
	
}
