package my.project.dto;

import java.util.Date;

public class TeamBoardDto {
	private int boardnum;
	private String userid;
	private String boardtitle;
	private String boardmajor;
	private String boardcontent;
	private int applynum;
	private int scannum;
	private Date bdate;
	private int result;

	public TeamBoardDto() {}

	
	
	public TeamBoardDto(int boardnum, String userid, String boardtitle, String boardmajor, String boardcontent,
			int applynum, int scannum, Date bdate, int result) {
		super();
		this.boardnum = boardnum;
		this.userid = userid;
		this.boardtitle = boardtitle;
		this.boardmajor = boardmajor;
		this.boardcontent = boardcontent;
		this.applynum = applynum;
		this.scannum = scannum;
		this.bdate = bdate;
		this.result = result;
	}



	public int getBoardnum() {
		return boardnum;
	}

	public void setBoardnum(int boardnum) {
		this.boardnum = boardnum;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getBoardtitle() {
		return boardtitle;
	}

	public void setBoardtitle(String boardtitle) {
		this.boardtitle = boardtitle;
	}

	public String getBoardmajor() {
		return boardmajor;
	}

	public void setBoardmajor(String boardmajor) {
		this.boardmajor = boardmajor;
	}

	public String getBoardcontent() {
		return boardcontent;
	}

	public void setBoardcontent(String boardcontent) {
		this.boardcontent = boardcontent;
	}

	public int getApplynum() {
		return applynum;
	}

	public void setApplynum(int applynum) {
		this.applynum = applynum;
	}

	public int getScannum() {
		return scannum;
	}

	public void setScannum(int scannum) {
		this.scannum = scannum;
	}

	public Date getBdate() {
		return bdate;
	}

	public void setBdate(Date bdate) {
		this.bdate = bdate;
	}

	public int getResult() {
		return result;
	}

	public void setResult(int result) {
		this.result = result;
	};
	
	
	
	
	
	
	
}
