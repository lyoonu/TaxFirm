package com.tax.domain;

import java.util.Date;

public class MemberVO {

	/*
    userId      varchar2(50)        not null,
    userPass      varchar2(50)        not null,
    userName    varchar2(50)        not null,
    regDate     date                default sysdate,
	*/
	
	private String userId;
	private String userPass;
	private String userName;
	private String userEmail;
	private Date regDate;
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPass() {
		return userPass;
	}
	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	
	

}
