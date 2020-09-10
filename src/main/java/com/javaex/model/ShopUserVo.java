package com.javaex.model;

import java.sql.Date;

public class ShopUserVo {
	String user_email;
	String user_pw;
	String user_name;
	String user_gender;
	String user_birth;
	String user_phone;
	String is_owner;
	Date sign_date;
	int point;
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public String getUser_pw() {
		return user_pw;
	}
	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_gender() {
		return user_gender;
	}
	public void setUser_gender(String user_gender) {
		this.user_gender = user_gender;
	}
	public String getUser_birth() {
		return user_birth;
	}
	public void setUser_birth(String user_birth) {
		this.user_birth = user_birth;
	}
	public String getUser_phone() {
		return user_phone;
	}
	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}
	public String getIs_owner() {
		return is_owner;
	}
	public void setIs_owner(String is_owner) {
		this.is_owner = is_owner;
	}
	public Date getSign_date() {
		return sign_date;
	}
	public void setSign_date(Date sign_date) {
		this.sign_date = sign_date;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	@Override
	public String toString() {
		return "[user_email=" + user_email + ", user_pw=" + user_pw + ", user_name=" + user_name
				+ ", user_gender=" + user_gender + ", user_birth=" + user_birth + ", user_phone=" + user_phone
				+ ", is_owner=" + is_owner + ", sign_date=" + sign_date + ", point=" + point + "]";
	}
	
	
}
