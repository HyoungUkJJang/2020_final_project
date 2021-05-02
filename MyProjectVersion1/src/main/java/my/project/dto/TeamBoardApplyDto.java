package my.project.dto;

public class TeamBoardApplyDto {
	
	private int boardnum;
	private String masteruserid;
	private String applyuserid;
	private String applyusercontent;
	
	public TeamBoardApplyDto() {};
	
	public TeamBoardApplyDto(int boardnum, String masteruserid, String applyuserid, String applyusercontent) {
		super();
		this.boardnum = boardnum;
		this.masteruserid = masteruserid;
		this.applyuserid = applyuserid;
		this.applyusercontent = applyusercontent;
	}
	public int getBoardnum() {
		return boardnum;
	}
	public void setBoardnum(int boardnum) {
		this.boardnum = boardnum;
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
	public String getApplyusercontent() {
		return applyusercontent;
	}
	public void setApplyusercontent(String applyusercontent) {
		this.applyusercontent = applyusercontent;
	}
	
	
}
