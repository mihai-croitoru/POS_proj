package com.tinder.demo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface MessagesRepo extends JpaRepository<Privatemessage, Long> {

	@Query("SELECT pm FROM Privatemessage pm WHERE pm.id_user = ?1 AND pm.dest_user_id = ?2 AND pm.id > ?3")
	List<Privatemessage> findByChatUsersId(Long id_user, Long dest_user_id, Long messageId);
	
	//@Query("SELECT pm FROM Privatemessage pm WHERE pm.id_user = ?1 AND pm.dest_user_id = ?2 AND pm.id > ?3")
	//List<Privatemessage> findByChatMessages(Long id_user, Long dest_user_id, Long messageId);
}
