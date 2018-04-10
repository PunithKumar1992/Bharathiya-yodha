package com.appfone.bharathiya.Daoimpl;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.appfone.bharathiya.Dao.AdminbannerDao;
import com.appfone.bharathiya.pojo.Byodhabanner;

@Repository
public class AdminbannerDaoimpl implements AdminbannerDao {

	@Autowired
	private SessionFactory factory;
	@Override
	public List getAdminBannerList() {
		Session session=factory.openSession();
		Query query=session.createQuery("from Byodhabanner");
		List list =query.list();
		return list;
	}
	@Override
	public void saveAdminBanner(Byodhabanner banner) {
		Session session=factory.getCurrentSession();
		session.save(banner);
		
	}
	@Override
	public void deleteadminBanner(int id) {
		Session session=factory.getCurrentSession();
		Query query=session.createQuery("delete from Byodhabanner where banner_id=:bannerid");
		query.setParameter("bannerid", id);
		int res= query.executeUpdate();
		System.out.println("the result of deleting admin banner is " +res);
		
	}
	@Override
	public int getBannersize() {
			int size=0;
			Session session=factory.getCurrentSession();
			Query query=session.createQuery("select count(*) from Byodhabanner");
		
			List list=query.list();
			Iterator itr=list.iterator();
			size=Integer.parseInt(itr.next().toString());
			return size;
	
	
	}
	@Override
	public Byodhabanner getsingleBanner(int id) {
		Session session=factory.getCurrentSession();
		Byodhabanner banner = session.get(Byodhabanner.class, id);
		return banner;
	}
	@Override
	public void updateadminBanner(Byodhabanner banner) {
		Session session=factory.getCurrentSession();
		session.update(banner);
		
	}

}
