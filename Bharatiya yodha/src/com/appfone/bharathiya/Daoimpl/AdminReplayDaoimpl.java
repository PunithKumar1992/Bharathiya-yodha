package com.appfone.bharathiya.Daoimpl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.appfone.bharathiya.Dao.AdminReplayDao;
import com.appfone.bharathiya.pojo.Byodhareplay;


@Repository
public class AdminReplayDaoimpl implements AdminReplayDao {

	@Autowired
	private SessionFactory factory;
	
	
	@Override
	public void saveReplay(Byodhareplay replay) {
		
		Session session = factory.openSession();
		session.save(replay);
		

	}

}
