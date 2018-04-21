package com.appfone.bharathiya.service;

import com.appfone.bharathiya.pojo.Byodhauserregistration;

public interface UserService {

	
	public void saveUser(Byodhauserregistration userreg);
	public int checkforUsername(String username);
	public int userlogincheck(String username,String userpass);
	public String getnameofloggeduser(String loginname);
}
