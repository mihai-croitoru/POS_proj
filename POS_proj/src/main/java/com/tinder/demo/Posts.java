package com.tinder.demo;


import javax.persistence.Entity;
import javax.persistence.Id;

	

@Entity
public class Posts {
	@Id
	private long id;
	private String postDescription;
	private String imgpath;
	private long idUser;
	private String Created;
	public long getIdPost() {
		return id;
	}
	public void setIdPost(long idPost) {
		this.id = idPost;
	}
	public String getPostDescription() {
		return postDescription;
	}
	public void setPostDescription(String postDescription) {
		this.postDescription = postDescription;
	}
	public String getImgpath() {
		return imgpath;
	}
	public void setImgpath(String imgpath) {
		this.imgpath = imgpath;
	}
	public long getIdUser() {
		return idUser;
	}
	public void setIdUser(long idUser) {
		this.idUser = idUser;
	}
	public String getCreated() {
		return Created;
	}
	public void setCreated(String created) {
		Created = created;
	}
	
	
	

}
