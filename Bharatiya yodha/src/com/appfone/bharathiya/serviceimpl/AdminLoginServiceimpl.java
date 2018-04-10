package com.appfone.bharathiya.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.appfone.bharathiya.Dao.AdminLoginDao;
import com.appfone.bharathiya.service.AdminLoginService;

@Service
public class AdminLoginServiceimpl  implements AdminLoginService{

	@Autowired
	private AdminLoginDao adminlog;
	@Override
	public int checkAdmin(String name, String pass) {
		int res=adminlog.checkAdmin(name, pass);
		return res;
	}

}
