package com.tinder.demo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface LikedProfilesRepo extends JpaRepository<Liketable, Long> {
	
	@Query("SELECT l.id_like FROM Liketable l WHERE l.liked_user_id = ?1 AND l.user_id = ?2")
	Long findByIdLike(Long likedUserId, Long userId);
	
	@Query("Select l.liked_user_id FROM Liketable l WHERE l.user_id = ?1")
	List<Long> findUsersLikedByUser_id(Long user_id);
}
