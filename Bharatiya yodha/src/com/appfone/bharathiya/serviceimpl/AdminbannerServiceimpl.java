
package com.appfone.bharathiya.serviceimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.appfone.bharathiya.Dao.AdminbannerDao;
import com.appfone.bharathiya.pojo.Byodhabanner;
import com.appfone.bharathiya.service.AdminbannerService;


@Service
public class AdminbannerServiceimpl implements AdminbannerService {

	@Autowired
	private AdminbannerDao adminbanner;
	@Override
	@Transactional
	public List getAdminBannerList() {
		List list=adminbanner.getAdminBannerList();
		return list;
	}
	@Override
	@Transactional
	public void saveAdminBanner(Byodhabanner banner) {
		
		adminbanner.saveAdminBanner(banner);
	}
	@Override
	@Transactional
	public void deleteadminBanner(int id) {
		adminbanner.deleteadminBanner(id);
		
	}
	@Override
	@Transactional
	public int getBannersize() {
	int size=adminbanner.getBannersize();
		return size;
	}
	@Override
	@Transactional
	public Byodhabanner getsingleBanner(int id) {
		Byodhabanner banner=adminbanner.getsingleBanner(id);
		return banner;
	}
	@Override
	@Transactional
	public void updateadminBanner(Byodhabanner banner) {
		
		adminbanner.updateadminBanner(banner);
		
	}

}
