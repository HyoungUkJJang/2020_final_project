package my.project.dto;

/**
 * @author dnr75
 *
 */
public class UserDto {

	private String userid;
	private String userpwd;
	private String username;
	private String userbirth;
	private String usermajor;
	private String userimg;
	private int alertnotice;
	private int secret;
	
	public UserDto() {}



	public UserDto(String userid, String userpwd, String username, String userbirth, String usermajor, String userimg,
			int alertnotice, int secret) {
		super();
		this.userid = userid;
		this.userpwd = userpwd;
		this.username = username;
		this.userbirth = userbirth;
		this.usermajor = usermajor;
		this.userimg = userimg;
		this.alertnotice = alertnotice;
		this.secret = secret;
	}



	public int getSecret() {
		return secret;
	}



	public void setSecret(int secret) {
		this.secret = secret;
	}



	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUserpwd() {
		return userpwd;
	}

	public void setUserpwd(String userpwd) {
		this.userpwd = userpwd;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUserbirth() {
		return userbirth;
	}

	public void setUserbirth(String userbirth) {
		this.userbirth = userbirth;
	}

	public String getUsermajor() {
		return usermajor;
	}

	public void setUsermajor(String usermajor) {
		this.usermajor = usermajor;
	}

	public String getUserimg() {
		return userimg;
	}

	public void setUserimg(String userimg) {
		this.userimg = userimg;
	}

	public int getAlertnotice() {
		return alertnotice;
	}

	public void setAlertnotice(int alertnotice) {
		this.alertnotice = alertnotice;
	}

	


	
}
