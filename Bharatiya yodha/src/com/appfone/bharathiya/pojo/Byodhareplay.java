package com.appfone.bharathiya.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="byodhareplay")
public class Byodhareplay {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="replay_id")
	private int replay_id;
	
	@Column(name="replayer_name")
	private String replayer_name;
	@Column(name="replayer_msg")
	private String replayer_msg;
	
	@Column(name="comment_id")
	private int comment_id;
	
	@Column(name="article_id")
	private int article_id;
	
	@OneToOne
	@JoinColumn(name="comment_id",insertable=false,updatable=false)
	private Byodhacomments comment;

	public int getReplay_id() {
		return replay_id;
	}

	public void setReplay_id(int replay_id) {
		this.replay_id = replay_id;
	}


	public String getReplayer_name() {
		return replayer_name;
	}

	public void setReplayer_name(String replayer_name) {
		this.replayer_name = replayer_name;
	}

	public String getReplayer_msg() {
		return replayer_msg;
	}

	public void setReplayer_msg(String replayer_msg) {
		this.replayer_msg = replayer_msg;
	}

	public int getComment_id() {
		return comment_id;
	}

	public void setComment_id(int comment_id) {
		this.comment_id = comment_id;
	}

	public int getArticle_id() {
		return article_id;
	}

	public void setArticle_id(int article_id) {
		this.article_id = article_id;
	}

	public Byodhacomments getComment() {
		return comment;
	}

	public void setComment(Byodhacomments comment) {
		this.comment = comment;
	}
	
	
	
}
