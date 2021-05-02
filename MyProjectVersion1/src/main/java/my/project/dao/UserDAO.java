package my.project.dao;

import my.project.dto.UserDto;
import my.project.test.ImgtestDto;
import my.project.test.ProfileDto;
import my.project.test.ProfileDto2;
import my.project.test.ProfileSkill;

public interface UserDAO {

	public void userjoin(UserDto userdto);
	public UserDto userlogin(UserDto userdto);
	public void imgtest(ImgtestDto imgdto);
	public String idcheck(String userid);
	
	//유저정보 가져오기
	public UserDto getuser(String userid);
	
	//프로필 값 가져오기
	public ProfileDto2 getprofile(String userid);
	
	public void secretchange(UserDto userdto);
	
	//프로필 회원가입시 기본세팅
	public void profileset(String userid);
	
	//프로필 입력 1~6번 구현
	public void profileinput1(ProfileDto2 profile);
	public void profileinput2(ProfileDto2 profile);
	public void profileinput3(ProfileDto2 profile);
	public void profileinput4(ProfileDto2 profile);
	public void profileinput5(ProfileDto2 profile);
	public void profileinput6(ProfileDto2 profile);
	
	// 유저 알림개수 증가시켜주기
	public void usernoticeup(String userid);
		
	// 사진업로드
	public void profilepicture(UserDto userdto);
	
		
}
