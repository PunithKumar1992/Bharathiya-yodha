package com.appfone.bharathiya.service;

import java.util.List;

import com.appfone.bharathiya.pojo.Byodhabanner;

public interface AdminbannerService {

	public List getAdminBannerList();
	public void saveAdminBanner(Byodhabanner banner);
	public void deleteadminBanner(int id);
	public int getBannersize();
	public Byodhabanner getsingleBanner(int id);
	public void updateadminBanner(Byodhabanner banner);
	
}
