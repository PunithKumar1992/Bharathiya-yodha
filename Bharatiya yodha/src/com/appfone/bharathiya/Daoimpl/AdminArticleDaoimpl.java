package com.appfone.bharathiya.Daoimpl;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.appfone.bharathiya.Dao.AdminArticleDao;
import com.appfone.bharathiya.pojo.Byodhaarticles;

@Repository
public class AdminArticleDaoimpl implements AdminArticleDao {

	@Autowired
	private SessionFactory factory;
	
	@Override
	public void saveArticle(Byodhaarticles articles) {
		System.out.println("in article dao");
		Session session= factory.openSession();
		session.save(articles);
	}

	@Override
	@SuppressWarnings("deprecation")
	public List getadminArticles() {
		
		Session session= factory.getCurrentSession();
		Query query=session.createQuery("from Byodhaarticles");
		List list=query.list();
		return list;
	}

	@Override
	public Byodhaarticles getSingleArticle(int id) {
		Session session = factory.getCurrentSession();
		Byodhaarticles articles= session.get(Byodhaarticles.class, id);
		return articles;
	}

		
		@Override
		@SuppressWarnings("deprecation")
	public void deleteadminarticle(int id) {
		Session session=factory.getCurrentSession();
		Query query=session.createQuery("delete from Byodhaarticles where article_id=:artid");
		query.setParameter("artid", id);
		int res=query.executeUpdate();
		System.out.println("the result of the deleting article is " +res);
		
	}

		@Override
		public void updateArticle(Byodhaarticles article) {
			Session session = factory.getCurrentSession();
			session.update(article);
			
		}

}
