package com.appfone.bharathiya.serviceimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.appfone.bharathiya.Dao.AdminCommentDao;
import com.appfone.bharathiya.pojo.Byodhacomments;
import com.appfone.bharathiya.service.AdminCommentService;

@Service
public class AdminCommentServiceimpl implements AdminCommentService {

	@Autowired
	private AdminCommentDao admincomment;
	
	
	
	@Override
	@Transactional
	public void saveComment(Byodhacomments cmmts) {
		admincomment.saveComment(cmmts);
		
	}



	@Override
	public int getcommentcount(int id) {
		int count = admincomment.getcommentcount(id);
		return count;
	}



	@Override
	@Transactional
	public List getComments() {
		List list=admincomment.getComments();
		return list;
	}



	@Override
	@Transactional
	public void deleteComment(int id) {
		admincomment.deleteComment(id);
		
	}

}
