package my.project.dto;

public class TeamMatchDto {

	private String title;
	private String content;
	private String masteruserid;
	private String applyuserid;
	
	public TeamMatchDto() {}
	
	public TeamMatchDto(String title, String content, String masteruserid, String applyuserid) {
		super();
		this.title = title;
		this.content = content;
		this.masteruserid = masteruserid;
		this.applyuserid = applyuserid;
	}

	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getMasteruserid() {
		return masteruserid;
	}
	public void setMasteruserid(String masteruserid) {
		this.masteruserid = masteruserid;
	}
	public String getApplyuserid() {
		return applyuserid;
	}
	public void setApplyuserid(String applyuserid) {
		this.applyuserid = applyuserid;
	}
	
}
