package com.appfone.bharathiya.serviceimpl;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.appfone.bharathiya.Dao.AdminReplayDao;
import com.appfone.bharathiya.pojo.Byodhareplay;
import com.appfone.bharathiya.service.AdminReplayService;

@Service
public class AdminReplayServiceimpl implements AdminReplayService {

	@Autowired
	private AdminReplayDao adminreplay;
	
	
	@Override
	@Transactional
	public void saveReplay(Byodhareplay replay) {
		adminreplay.saveReplay(replay);
		

	}

}
