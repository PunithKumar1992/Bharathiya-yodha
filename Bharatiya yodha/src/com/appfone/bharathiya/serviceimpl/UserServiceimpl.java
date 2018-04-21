package com.appfone.bharathiya.serviceimpl;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.appfone.bharathiya.Dao.UserDao;
import com.appfone.bharathiya.pojo.Byodhauserregistration;
import com.appfone.bharathiya.service.UserService;

@Service
public class UserServiceimpl implements UserService {

	@Autowired
	private UserDao saveuser;
	
	@Override
	@Transactional
	public void saveUser(Byodhauserregistration userreg) {
		saveuser.saveUser(userreg);

	}

	@Override
	@Transactional
	public int checkforUsername(String username) {
	int flag= saveuser.checkforUsername(username);
		return flag;
	}

	@Override
	@Transactional
	public int userlogincheck(String username, String userpass) {
	int flag=saveuser.userlogincheck(username, userpass);
		return flag;
	}

	@Override
	@Transactional
	public String getnameofloggeduser(String loginname) {
		String firstname=saveuser.getnameofloggeduser(loginname);
		return firstname;
	}

}
