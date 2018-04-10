package com.appfone.bharathiya.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name="byodhabanner")
public class Byodhabanner {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="banner_id")
	private int banner_id;
	
	@Column(name="banner_image")
	private String banner_image;
	
	@Column(name="banner_caption")
	private String banner_caption;
	
	@Column(name="banner_content")
	private String banner_content;
	
	@Transient
	private MultipartFile bannerfile;
	
	
	public int getBanner_id() {
		return banner_id;
	}
	public void setBanner_id(int banner_id) {
		this.banner_id = banner_id;
	}
	public String getBanner_image() {
		return banner_image;
	}
	public void setBanner_image(String banner_image) {
		this.banner_image = banner_image;
	}
	public MultipartFile getBannerfile() {
		return bannerfile;
	}
	public void setBannerfile(MultipartFile bannerfile) {
		this.bannerfile = bannerfile;
	}
	public String getBanner_caption() {
		return banner_caption;
	}
	public void setBanner_caption(String banner_caption) {
		this.banner_caption = banner_caption;
	}
	public String getBanner_content() {
		return banner_content;
	}
	public void setBanner_content(String banner_content) {
		this.banner_content = banner_content;
	}
	
	
	

}
