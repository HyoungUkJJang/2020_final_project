package my.project.dto;

import java.util.Date;

public class NoticeDto {

	private String userid;
	private String content;
	private int state;
	private Date noticedate;
	
	public NoticeDto() {};
	
	public NoticeDto(String userid, String content, int state, Date noticedate) {
		super();
		this.userid = userid;
		this.content = content;
		this.state = state;
		this.noticedate = noticedate;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public Date getNoticedate() {
		return noticedate;
	}
	public void setNoticedate(Date noticedate) {
		this.noticedate = noticedate;
	}
	
}
