package com.appfone.bharathiya.Daoimpl;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Property;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.appfone.bharathiya.Dao.UserDao;
import com.appfone.bharathiya.pojo.Byodhaadminregistration;
import com.appfone.bharathiya.pojo.Byodhauserregistration;

@Repository
public class UserDaoimpl implements UserDao {

	@Autowired
	private SessionFactory factory;
	
	@Override
	public void saveUser(Byodhauserregistration userreg) {
		Session session = factory.openSession();
		session.save(userreg);
	

	}

	@Override
	public int checkforUsername(String username) {
	Session session = factory.getCurrentSession();
	Query query= session.createQuery("from Byodhauserregistration where user_loginname=:name");
	query.setParameter("name", username);
	List list = query.list();
	int flag=0;
	if((list.size()>0) && (list !=null))
	{
		flag=1;
	}
	else
	{
		flag=0;
	}
		return flag;
	}

	@Override
	public int userlogincheck(String username, String userpass) {
		Session session=factory.getCurrentSession();
		Query query=session.createQuery("from Byodhauserregistration where user_loginname=:username and user_password=:userpass");
		query.setParameter("username", username);
		query.setParameter("userpass", userpass);
		List list= query.list();
		int flag=0;
		if((list.size()>0) && (list !=null))
		{
			flag=1;
		}
		return flag;
	}

	@Override
	public String getnameofloggeduser(String loginname) {
	Session session = factory.getCurrentSession();
	String result = (String)session.createCriteria(Byodhauserregistration.class)
			.add(Restrictions.eq("user_loginname", loginname))
			.setProjection(Property.forName("user_firstname"))
			.uniqueResult();
	return result;
	
	}

}
