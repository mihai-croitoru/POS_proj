package com.tinder.demo;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class PostHandlingController {
	
	
	@Autowired
	PostRepo repo;
	/*
	 * @Autowired LikedProfilesRepo likesRepo;
	 */
	
	
	@RequestMapping("/posts/{idUser}")
	public Optional<Posts> getPostByUserID(@PathVariable("idUser") Long idUser){
		return repo.findByIdUser(idUser);
	}
	
	

}
