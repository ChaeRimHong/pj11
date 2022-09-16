package com.ezen.pj09;

public class LoginDTO {
	String id,pw;
	
	public LoginDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public LoginDTO(String id, String pw) {
		super();
		this.id = id;
		this.pw = pw;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}
}
