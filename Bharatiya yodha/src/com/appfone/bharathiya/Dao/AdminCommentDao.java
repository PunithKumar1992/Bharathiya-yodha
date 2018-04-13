package com.appfone.bharathiya.Dao;

import java.util.List;

import com.appfone.bharathiya.pojo.Byodhacomments;

public interface AdminCommentDao {
	
	public void saveComment(Byodhacomments cmmts);
	public int getcommentcount(int id);
	public List getComments();
	public void deleteComment(int id);
	public List getCmmtRlpylist(int article_id);

}
