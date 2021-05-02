package my.project.test;

public class EasyProfileDto {
	
	private String userid;
	private String Easy_Profile_name;
	private String Easy_profile_content;
	
	public EasyProfileDto() {}
	
	public EasyProfileDto(String userid, String easy_Profile_name, String easy_profile_content) {
		super();
		this.userid = userid;
		Easy_Profile_name = easy_Profile_name;
		Easy_profile_content = easy_profile_content;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getEasy_Profile_name() {
		return Easy_Profile_name;
	}
	public void setEasy_Profile_name(String easy_Profile_name) {
		Easy_Profile_name = easy_Profile_name;
	}
	public String getEasy_profile_content() {
		return Easy_profile_content;
	}
	public void setEasy_profile_content(String easy_profile_content) {
		Easy_profile_content = easy_profile_content;
	}
	
	
}
