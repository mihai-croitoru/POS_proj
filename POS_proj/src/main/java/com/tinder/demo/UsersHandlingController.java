package com.tinder.demo;

import java.util.LinkedList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UsersHandlingController {
	
	@Autowired
	UserRepo userRepo;
	@Autowired
	LikedProfilesRepo likesRepo;
	@Autowired
	MessagesRepo chatRepo;
	
	@RequestMapping("/users/{country}")
	public List<Users> getUsersByCountryName(@PathVariable("country") String country){
		return userRepo.findByCountry(country);
	}
	
//	@RequestMapping(path="/profiles/{country}",produces={"application/json"})
//	public List<Users> getUsersByCountry(@PathVariable("country") String country){
//		return repo.findByCountryName(country);
//	}
	
	@RequestMapping(path="/profiles/{country}&{sex}",produces={"application/json"})
	public List<Users> getUsersByCountry(@PathVariable("country") String country, @PathVariable("sex") String sex){
		return userRepo.findByCountryAndSex(country, sex);
	}
	
	@RequestMapping(path="/find/{country}&{sex}&{interestedin}",produces={"application/json"})
	public List<Users> getUsersByCountry(@PathVariable("country") String country, @PathVariable("sex") String sex, 
			@PathVariable("interestedin") String interestedin){
		return userRepo.findByCountryAndSexAndInterestedIn(country, sex, interestedin);
	}
	
	@PostMapping(path="/addLike", consumes={"application/json"})
	public String addLike(@RequestBody Liketable like) {
		//like.setId_like(1);
		likesRepo.save(like);
		return "added";
	}
	
	@DeleteMapping(path="/deleteLike", consumes={"application/json"})
	public String deleteLike(@RequestBody Liketable like /* the id for this like is only in DB */) {
		Long id = likesRepo.findByIdLike(like.getLiked_user_id(), like.getUser_id());
		Liketable likeToDelete = likesRepo.getOne(id);
		likesRepo.delete(likeToDelete);
		return "deleted";
	}
	
	@RequestMapping(path="/checklikes/{userId}")
	@ResponseBody
	public List<Long> checkIfLiked(@PathVariable("userId") Long userId) {
		List<Long> idsLikes = likesRepo.findUsersLikedByUser_id(userId);
		return idsLikes;
	}
	
	@GetMapping("/getFriends/{currentUser}")
	@ResponseBody
	public List<Users> getFriends(@PathVariable("currentUser") Long userId){
		List<Users> friends = new LinkedList<Users>();
		List<Long> likedUsers = likesRepo.findUsersLikedByUser_id(userId);
		for(Long id : likedUsers) {
			List<Long> liked = likesRepo.findUsersLikedByUser_id(id);
			if(liked.contains(userId)) {
				Users u = userRepo.findById(id).orElse(null);
				if(u!=null) {
					friends.add(u);
				}
			}
		}
		return friends;
	}
	
	@GetMapping("/getChatUserImage/{userId}")
	@ResponseBody
	public String getChatUserImage(@PathVariable("userId") Long userId) {
		return userRepo.getUserImg(userId);
	}
	
	@PostMapping(path="/addMessage", consumes={"application/json"})
	public void addMessage(@RequestBody Privatemessage message) {
		chatRepo.save(message);
	}
	
	final long THIRTY_MINUTES = 30 * 60 * 1000;
	@RequestMapping(path="/getMessages/{sender}&{receiver}&{currentMessageId}",produces={"application/json"})
	public List<Privatemessage> getMessages(@PathVariable("sender") Long sender, @PathVariable("receiver") Long receiver, 
			@PathVariable("currentMessageId") Long currentMessageId){
		List<Privatemessage> messages = chatRepo.findByChatUsersId(sender, receiver, currentMessageId);
		return (messages.size()>0) ? messages : null;
	}
}
