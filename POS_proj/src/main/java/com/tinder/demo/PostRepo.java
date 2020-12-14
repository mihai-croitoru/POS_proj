package com.tinder.demo;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface PostRepo extends JpaRepository<Posts, Long>  {


	Optional<Posts> findByIdUser(Long idUser);
	
	@Query("Select p From Posts p where p.idUser = ?1 ") Posts  findByIdUser1(Long idUser)	;
	 
	/*
	 * @Query("SELECT p FROM Posts p WHERE p.idUser = ?1 ") Posts void findById(Long
	 * idUser);
	 */
	/*
	 
	 * 
	 * @Query("SELECT p FROM Post p WHERE p.idUser = ?1 AND u.pass = ?2") Users
	 * findByEmailAndPass(String email, String pass);
	 * 
	 * @Query("SELECT p FROM Post p WHERE p.idPost = ?1") Users findByIdPost(long
	 * idPost);
	 * 
	 * List<Users> findByCountry(String country);
	 * 
	 * // @Query("SELECT u.id, u.name, u.lastname, u.email, u.imgpath, u.country, u.city_state FROM Users u WHERE u.country = ?1"
	 * ) // List<Users> findByCountryName(String country);
	 * 
	 * @Query("SELECT u FROM Users u WHERE u.country = ?1 AND u.sex = ?2")
	 * List<Users> findByCountryAndSex(String country, String sex);
	 * 
	 * @Query("SELECT u FROM Users u WHERE u.country = ?1 AND u.sex = ?2 AND u.interestedin = ?3"
	 * ) List<Users> findByCountryAndSexAndInterestedIn(String country, String sex,
	 * String interestedin);
	 */
	
	


}



