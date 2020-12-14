package com.tinder.demo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface UserRepo extends JpaRepository<Users, Long> {
	List<Users> findByEmail(String email);
	
	@Query("SELECT u FROM Users u WHERE u.email = ?1 AND u.pass = ?2")
	Users findByEmailAndPass(String email, String pass);
	
	@Query("SELECT u FROM Users u WHERE u.id = ?1")
	Users findById(long id);
	
	List<Users> findByCountry(String country);
	
//	@Query("SELECT u.id, u.name, u.lastname, u.email, u.imgpath, u.country, u.city_state FROM Users u WHERE u.country = ?1")
//	List<Users> findByCountryName(String country);
	
	@Query("SELECT u FROM Users u WHERE u.country = ?1 AND u.sex = ?2")
	List<Users> findByCountryAndSex(String country, String sex);

	@Query("SELECT u FROM Users u WHERE u.country = ?1 AND u.sex = ?2 AND u.interestedin = ?3")
	List<Users> findByCountryAndSexAndInterestedIn(String country, String sex, String interestedin);
	
	@Query("SELECT u.imgpath FROM Users u WHERE u.id = ?1")
	String getUserImg(long id);	
}
