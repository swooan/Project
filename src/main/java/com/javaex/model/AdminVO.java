package com.javaex.model;

public class AdminVO {
	private String admin_id;	// 관리자 아이디		NOT NULL
	private String admin_pw;	// 관리자 비밀번호	NOT NULL
	
	public AdminVO() {}

	public AdminVO(String admin_id, String admin_pw) {
		this.admin_id = admin_id;
		this.admin_pw = admin_pw;
	}

	public String getAdmin_id() {
		return admin_id;
	}

	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}

	public String getAdmin_pw() {
		return admin_pw;
	}

	public void setAdmin_pw(String admin_pw) {
		this.admin_pw = admin_pw;
	}

	@Override
	public String toString() {
		return "AdminVO [admin_id=" + admin_id + ", admin_pw=" + admin_pw + "]";
	}
	
}
