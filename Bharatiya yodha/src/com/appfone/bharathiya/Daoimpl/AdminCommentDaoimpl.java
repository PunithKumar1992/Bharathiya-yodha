package com.appfone.bharathiya.Daoimpl;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.appfone.bharathiya.Dao.AdminCommentDao;
import com.appfone.bharathiya.pojo.Byodhacomments;

import javassist.tools.framedump;

@Repository
public class AdminCommentDaoimpl implements AdminCommentDao {

	@Autowired
	private SessionFactory factory;
	
	@Override
	public void saveComment(Byodhacomments cmmts) {
		Session session = factory.openSession();
		session.save(cmmts);

	}

	@Override
	public int getcommentcount(int id) {
		Session session=factory.getCurrentSession();
		Query query=session.createQuery("select count(*) from  Byodhacomments where article_id:=artid");
		query.setParameter("artid", id);
		List list = query.list();
		Iterator itr = list.iterator();
		int count = Integer.parseInt(itr.next().toString());
		return count;
	}

	@Override
	public List getComments() {
		Session session=factory.getCurrentSession();
		Query query= session.createQuery("from Byodhacomments");
		List list = query.list();
		return list;
	}

	@Override
	public void deleteComment(int id) {
		Session session=factory.getCurrentSession();
		Query query = session.createQuery("delete from Byodhacomments where comment_id=:commentid");
		query.setParameter("commentid", id);
		int res= query.executeUpdate();
		
	}

	@Override
	@SuppressWarnings(value = "deprecation")
	public List getCmmtRlpylist(int article_id) {
		Session session = factory.getCurrentSession();
		String sql = "SELECT * FROM Byodhacomments WHERE article_id = :article_id";
		SQLQuery query = session.createSQLQuery(sql);
		query.addEntity(Byodhacomments.class);
		query.setParameter("article_id", article_id);
		List list = query.list();
		return list;
	}

}
