package com.tinder.demo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Users {
	@Id
	private long id;
	private String name;
	private String pass;
	private String lastname;
	@Column(unique=true)
	private String email;
	private long phonenr;
	private String imgpath;
	private String description;
	private String language;
	private String sex;
	private String age;
	private String interestedin;
	private String etnicity;
	private String height;
	private String weight;
	private String religion;
	private String region;
	private String country;
	private String city_state;
	/* private String statusMessage; */
	
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public long getPhonenr() {
		return phonenr;
	}

	public void setPhonenr(long phonenr) {
		this.phonenr = phonenr;
	}

	public String getImgpath() {
		return imgpath;
	}

	public void setImgpath(String imgpath) {
		this.imgpath = imgpath;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getInterestedin() {
		return interestedin;
	}

	public void setInterestedin(String interestedin) {
		this.interestedin = interestedin;
	}

	public String getEtnicity() {
		return etnicity;
	}

	public void setEtnicity(String etnicity) {
		this.etnicity = etnicity;
	}

	public String getHeight() {
		return height;
	}

	public void setHeight(String height) {
		this.height = height;
	}

	public String getWeight() {
		return weight;
	}

	public void setWeight(String weight) {
		this.weight = weight;
	}

	public String getReligion() {
		return religion;
	}

	public void setReligion(String religion) {
		this.religion = religion;
	}

	public String getRegion() {
		return region;
	}

	public void setRegion(String region) {
		this.region = region;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getCity_state() {
		return city_state;
	}

	public void setCity_state(String city_state) {
		this.city_state = city_state;
	}
	
	/*
	 * public String getStatusMessage() { return statusMessage; }
	 * 
	 * public void setStatusMessage(String statusMessage) { this.statusMessage =
	 * statusMessage; }
	 */	

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Users [name=").append(name).append(", lastname=").append(lastname).append(", email=")
				.append(email).append("]");
		return builder.toString();
	}

	
	
	
}
