package com.tinder.demo;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Privatemessage {
	@Id
	private long id;
	private String created;	/* IN BAZA DE DATE AM SCHIMBAT din Date in Varchar(99) */
	private long id_user;
	private long dest_user_id;
	private String message_body;
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getCreated() {
		return created;
	}
	public void setCreated(String created) {
		this.created = created;
	}
	public long getId_user() {
		return id_user;
	}
	public void setId_user(long id_user) {
		this.id_user = id_user;
	}
	public long getDest_user_id() {
		return dest_user_id;
	}
	public void setDest_user_id(long dest_user_id) {
		this.dest_user_id = dest_user_id;
	}
	public String getMessage_body() {
		return message_body;
	}
	public void setMessage_body(String message_body) {
		this.message_body = message_body;
	}
		
}
