package com.appfone.bharathiya.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="byodhaadminregistration")
public class Byodhaadminregistration {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="admin_id")
	private int admin_id;
	
	@Column(name="admin_name")
	private String admin_name;
	
	@Column(name="admin_email")
	private String admin_email;
	
	@Column(name="admin_phone")
	private String admin_phone;
	
	@Column(name="admin_password")
	private String admin_password;
	
	
	public int getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(int admin_id) {
		this.admin_id = admin_id;
	}
	public String getAdmin_name() {
		return admin_name;
	}
	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}
	public String getAdmin_email() {
		return admin_email;
	}
	public void setAdmin_email(String admin_email) {
		this.admin_email = admin_email;
	}
	public String getAdmin_phone() {
		return admin_phone;
	}
	public void setAdmin_phone(String admin_phone) {
		this.admin_phone = admin_phone;
	}
	public String getAdmin_password() {
		return admin_password;
	}
	public void setAdmin_password(String admin_password) {
		this.admin_password = admin_password;
	}
	@Override
	public String toString() {
		return "Byodhaadminregistration [admin_id=" + admin_id + ", admin_name=" + admin_name + ", admin_email="
				+ admin_email + ", admin_phone=" + admin_phone + ", admin_password=" + admin_password + "]";
	}
	
	
	

}
