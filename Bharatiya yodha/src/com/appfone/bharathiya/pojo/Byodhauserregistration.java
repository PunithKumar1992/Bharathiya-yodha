package com.appfone.bharathiya.pojo;

import javax.annotation.Generated;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="byodhauserregistration")
public class Byodhauserregistration {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="userlogin_id")
	private int userlogin_id;
	
	@Column(name="user_firstname")
	private String user_firstname;
	
	@Column(name="user_lastname")
	private String user_lastname;
	
	@Column(name="user_email")
	private String user_email;
	
	@Column(name="user_password")
	private String user_password;
	
	@Column(name="user_loginname")
	private String user_loginname;

	public int getUserlogin_id() {
		return userlogin_id;
	}

	public void setUserlogin_id(int userlogin_id) {
		this.userlogin_id = userlogin_id;
	}

	public String getUser_firstname() {
		return user_firstname;
	}

	public void setUser_firstname(String user_firstname) {
		this.user_firstname = user_firstname;
	}

	public String getUser_lastname() {
		return user_lastname;
	}

	public void setUser_lastname(String user_lastname) {
		this.user_lastname = user_lastname;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public String getUser_password() {
		return user_password;
	}

	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}

	
	
	public String getUser_loginname() {
		return user_loginname;
	}

	public void setUser_loginname(String user_loginname) {
		this.user_loginname = user_loginname;
	}

	@Override
	public String toString() {
		return "Byodhauserregistration [userlogin_id=" + userlogin_id + ", user_firstname=" + user_firstname
				+ ", user_lastname=" + user_lastname + ", user_email=" + user_email + ", user_password=" + user_password
				+ "]";
	}
	
	
	
	
	

}
