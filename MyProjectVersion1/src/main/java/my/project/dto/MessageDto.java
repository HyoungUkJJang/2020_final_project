package my.project.dto;

public class MessageDto {

	private String senduserid;
	private String reciveuserid;
	private String content;
	private String senduserimg;
	
	public MessageDto() {}
	
	public String getSenduserid() {
		return senduserid;
	}
	public void setSenduserid(String senduserid) {
		this.senduserid = senduserid;
	}
	public String getReciveuserid() {
		return reciveuserid;
	}
	public void setReciveuserid(String reciveuserid) {
		this.reciveuserid = reciveuserid;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getSenduserimg() {
		return senduserimg;
	}
	public void setSenduserimg(String senduserimg) {
		this.senduserimg = senduserimg;
	}
	
	public MessageDto(String senduserid, String reciveuserid, String content, String senduserimg) {
		super();
		this.senduserid = senduserid;
		this.reciveuserid = reciveuserid;
		this.content = content;
		this.senduserimg = senduserimg;
	}
	
	
}
