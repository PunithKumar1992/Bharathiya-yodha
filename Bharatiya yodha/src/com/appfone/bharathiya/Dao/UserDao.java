
package com.appfone.bharathiya.Dao;

import com.appfone.bharathiya.pojo.Byodhauserregistration;

public interface UserDao {
	
	public void saveUser(Byodhauserregistration userreg);
	public int checkforUsername(String username);
	public int userlogincheck(String username,String userpass);
	public String getnameofloggeduser(String loginname);
}
