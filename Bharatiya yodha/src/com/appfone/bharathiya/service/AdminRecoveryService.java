package com.appfone.bharathiya.service;

public interface AdminRecoveryService {
	public int checkMailidtosend(String email);
	public String getusername(String email);
	public String getpassword(String email);

}
