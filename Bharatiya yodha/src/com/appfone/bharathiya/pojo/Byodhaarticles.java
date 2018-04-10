package com.appfone.bharathiya.pojo;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name="byodhaarticles")
public class Byodhaarticles {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="article_id")
	private int article_id;
	
	@Column(name="article_caption")
	private String article_caption;
	
	@Column(name="article_brief")
	private String article_brief;
	
	@Column(name="article_detail")
	private String article_detail;
	
	@Column(name="article_gridimage")
	private String article_gridimage;
	
	@Column(name="article_person")
	private String article_person;
	
	
	@Column(name="article_image")
	private String article_image;

	@Column(name="article_date")
	private String article_date;
	
	@Column(name="article_view")
	private int article_view;
	
	@Column(name="article_comment")
	private int article_comment;
	@Transient
	private MultipartFile articlegridfile;
	
	@Transient
	private MultipartFile articlefile;

	@OneToMany(mappedBy="article")
	private List<Byodhacomments>comments=new ArrayList<>();
	
	
	
	
	public List<Byodhacomments> getComments() {
		return comments;
	}

	public void setComments(List<Byodhacomments> comments) {
		this.comments = comments;
	}

	public int getArticle_id() {
		return article_id;
	}

	public void setArticle_id(int article_id) {
		this.article_id = article_id;
	}

	public String getArticle_caption() {
		return article_caption;
	}

	public void setArticle_caption(String article_caption) {
		this.article_caption = article_caption;
	}

	public String getArticle_brief() {
		return article_brief;
	}

	public void setArticle_brief(String article_brief) {
		this.article_brief = article_brief;
	}

	public String getArticle_detail() {
		return article_detail;
	}

	public void setArticle_detail(String article_detail) {
		this.article_detail = article_detail;
	}

	public String getArticle_gridimage() {
		return article_gridimage;
	}

	public void setArticle_gridimage(String article_gridimage) {
		this.article_gridimage = article_gridimage;
	}

	public String getArticle_person() {
		return article_person;
	}

	public void setArticle_person(String article_person) {
		this.article_person = article_person;
	}

	public String getArticle_image() {
		return article_image;
	}

	public void setArticle_image(String article_image) {
		this.article_image = article_image;
	}

	public String getArticle_date() {
		return article_date;
	}

	public void setArticle_date(String article_date) {
		this.article_date = article_date;
	}

	public MultipartFile getArticlegridfile() {
		return articlegridfile;
	}

	public void setArticlegridfile(MultipartFile articlegridfile) {
		this.articlegridfile = articlegridfile;
	}

	public MultipartFile getArticlefile() {
		return articlefile;
	}

	public void setArticlefile(MultipartFile articlefile) {
		this.articlefile = articlefile;
	}

	public int getArticle_view() {
		return article_view;
	}

	public void setArticle_view(int article_view) {
		this.article_view = article_view;
	}

	@Override
	public String toString() {
		return "Byodhaarticles [article_id=" + article_id + ", article_caption=" + article_caption + ", article_brief="
				+ article_brief + ", article_detail=" + article_detail + ", article_gridimage=" + article_gridimage
				+ ", article_person=" + article_person + ", article_image=" + article_image + ", article_date="
				+ article_date + ", article_view=" + article_view + ", articlegridfile=" + articlegridfile
				+ ", articlefile=" + articlefile + "]";
	}

	

	public int getArticle_comment() {
		return article_comment;
	}

	public void setArticle_comment(int article_comment) {
		this.article_comment = article_comment;
	}

	
	
	
	
	
	
	
	
	
	
	
}
