package com.appfone.bharathiya.serviceimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.appfone.bharathiya.Dao.AdminArticleDao;
import com.appfone.bharathiya.pojo.Byodhaarticles;
import com.appfone.bharathiya.service.AdminArticleService;

@Service
public class AdminArticleServiceimpl implements AdminArticleService {

	@Autowired
	private AdminArticleDao adminarticle;
	@Override
	@Transactional
	public void saveArticle(Byodhaarticles articles) {
		System.out.println("article views from service impl is  " +articles.getArticle_view());
		adminarticle.saveArticle(articles);
	}
	@Override
	@Transactional
	public List getadminArticles() {
		List list=adminarticle.getadminArticles();
		return list;
	}
	@Override
	@Transactional
	public Byodhaarticles getSingleArticle(int id) {
		Byodhaarticles article=adminarticle.getSingleArticle(id);
		return article;
	}
	@Override
	@Transactional
	public void deleteadminarticle(int id) {
		adminarticle.deleteadminarticle(id);
		
	}
	@Override
	@Transactional
	public void updateArticle(Byodhaarticles article) {
		adminarticle.updateArticle(article);
		
	}

}
