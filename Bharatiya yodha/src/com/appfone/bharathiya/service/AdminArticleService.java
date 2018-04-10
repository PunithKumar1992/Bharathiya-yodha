package com.appfone.bharathiya.service;

import java.util.List;

import com.appfone.bharathiya.pojo.Byodhaarticles;

public interface AdminArticleService {
	public void saveArticle(Byodhaarticles articles);
	public List getadminArticles();
	public Byodhaarticles getSingleArticle(int id);
	public void deleteadminarticle(int id);
	public void updateArticle(Byodhaarticles article);

}
