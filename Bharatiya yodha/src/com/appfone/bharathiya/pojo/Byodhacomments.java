package com.appfone.bharathiya.pojo;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="byodhacomments")
public class Byodhacomments  {
	
	@Id	
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="comment_id")
	private int comment_id;
	
	@Column(name="commenter_name")
	private String commenter_name;
	
	@Column(name="commenter_email")
	private String commenter_email;
	
	@Column(name="commenter_message")
	private String commenter_message;
	@Column(name="article_id")
	private int article_id;
	
	
	@ManyToOne
	@JoinColumn(name="article_id",insertable=false, updatable=false)
	private Byodhaarticles article;
	
	
	
	
	
	
	public Byodhaarticles getArticle() {
		return article;
	}
	public void setArticle(Byodhaarticles article) {
		this.article = article;
	}
	public int getComment_id() {
		return comment_id;
	}
	public void setComment_id(int comment_id) {
		this.comment_id = comment_id;
	}
	public String getCommenter_name() {
		return commenter_name;
	}
	public void setCommenter_name(String commenter_name) {
		this.commenter_name = commenter_name;
	}
	public String getCommenter_email() {
		return commenter_email;
	}
	public void setCommenter_email(String commenter_email) {
		this.commenter_email = commenter_email;
	}
	public String getCommenter_message() {
		return commenter_message;
	}
	public void setCommenter_message(String commenter_message) {
		this.commenter_message = commenter_message;
	}
	public int getArticle_id() {
		return article_id;
	}
	public void setArticle_id(int article_id) {
		this.article_id = article_id;
	}
	@Override
	public String toString() {
		return "Byodhacomments [comment_id=" + comment_id + ", commenter_name=" + commenter_name + ", commenter_email="
				+ commenter_email + ", commenter_message=" + commenter_message + ", article_id=" + article_id + "]";
	}

	
	
	
	
	
	
	
	
	

}
