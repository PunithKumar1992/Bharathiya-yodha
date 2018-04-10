package com.appfone.bharathiya.serviceimpl;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.appfone.bharathiya.Dao.AdminRecoveryDao;
import com.appfone.bharathiya.service.AdminRecoveryService;


@Service
public class AdminRecoveryServiceimpl implements AdminRecoveryService {

	@Autowired
	private AdminRecoveryDao adminrecovery;
	@Override
	@Transactional
	public int checkMailidtosend(String email) {
		int res=adminrecovery.checkMailidtosend(email);
		return res;
	}

	@Override
	@Transactional
	public String getusername(String email) {
		String email1=adminrecovery.getusername(email);
		return email1;
	}

	@Override
	@Transactional
	public String getpassword(String email) {
		String password=adminrecovery.getpassword(email);
		return password;
	}

}
