package com.tinder.demo;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Liketable {
	@Id
	private long id_like;
	private Date created;
	private long liked_user_id;
	private long user_id;
	
	public long getId_like() {
		return id_like;
	}
	public void setId_like(long id_like) {
		this.id_like = id_like;
	}
	public Date getCreated() {
		return created;
	}
	public void setCreated(Date created) {
		this.created = created;
	}
	public long getLiked_user_id() {
		return liked_user_id;
	}
	public void setLiked_user_id(long liked_user_id) {
		this.liked_user_id = liked_user_id;
	}
	public long getUser_id() {
		return user_id;
	}
	public void setUser_id(long user_id) {
		this.user_id = user_id;
	}	
	
}
