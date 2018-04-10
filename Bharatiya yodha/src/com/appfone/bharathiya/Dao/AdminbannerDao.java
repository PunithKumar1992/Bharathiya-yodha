package com.appfone.bharathiya.Dao;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.appfone.bharathiya.pojo.Byodhabanner;

public interface AdminbannerDao {

	
	public List getAdminBannerList();
	public void saveAdminBanner(Byodhabanner banner);
	public void deleteadminBanner(int id);
	public int getBannersize();
	public Byodhabanner getsingleBanner(int id);
	public void updateadminBanner(Byodhabanner banner);
	
}
