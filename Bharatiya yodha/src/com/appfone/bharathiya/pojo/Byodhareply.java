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
@Table(name="byodhareply")
public class Byodhareply {
	
	@Column(name="reply_id")
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int reply_id;
	
	@Column(name="replayer_name")
	private String replayer_name;
	
	@Column(name="replay_msg")
	private String replay_msg;
	
	@OneToOne
	@JoinColumn(name="comment_id")
	private String comment;

	public int getReply_id() {
		return reply_id;
	}

	public void setReply_id(int reply_id) {
		this.reply_id = reply_id;
	}

	public String getReplayer_name() {
		return replayer_name;
	}

	public void setReplayer_name(String replayer_name) {
		this.replayer_name = replayer_name;
	}

	public String getReplay_msg() {
		return replay_msg;
	}

	public void setReplay_msg(String replay_msg) {
		this.replay_msg = replay_msg;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}
	
	
	
	

}
