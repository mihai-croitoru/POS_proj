package com.tinder.demo;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class HomeController {
	@RequestMapping("home")
	public String home() {
		return "loginup.jsp";
	}

	@Autowired
	UserRepo repo;

	@PostMapping("/addUser")
	public ModelAndView addUsers(Users user, @RequestParam("re_pass") String rePass, HttpSession session) {
		ModelAndView error = new ModelAndView("loginup.jsp");
		if (user.getPass().equals(rePass) && !rePass.equals("")) {
			List<Users> users = repo.findByEmail(user.getEmail());
			if (!users.isEmpty()) {
				error.addObject("email_err", "*Email used already exists!");
				return error;
			} else {
				ModelAndView mv = new ModelAndView("continueRegistration.jsp");
				session.setAttribute("user",user);
				final int logRounds = 10;
				user.setPass(BCrypt.hashpw(user.getPass(),BCrypt.gensalt(logRounds)));
				repo.save(user);
				return mv;
			}
		} else {
			error.addObject("pass_err", "*Passwords don't match!");
			return error;
		}

	}
	
	@PostMapping("/login")
	ModelAndView loginUser(@RequestParam("email") String email, @RequestParam("mypass") String pass, HttpSession session) {
		ModelAndView errorView = new ModelAndView("loginup.jsp");
		List<Users> users = repo.findByEmail(email);
		if (!users.isEmpty()) {
			String cryptedPassFromDataBase = users.get(0).getPass();
			boolean doesMatch = BCrypt.checkpw(pass, cryptedPassFromDataBase);
			if( doesMatch ) {
				ModelAndView userView = new ModelAndView("userProfile.jsp");
				session.setAttribute("user",users.get(0));
				userView.addObject("user", "*good boi!");
				return userView;
			}else {
				errorView.addObject("err_pass","*Wrong credentials!");
				return errorView;
			}
		}else {
			errorView.addObject("email_err","*Wrong email!");
			return errorView;
		}
	}
	
	
	/*
	 * @PostMapping("/updateStatus") public ModelAndView updateStatus(@RequestBody
	 * Users user, HttpSession session) { ModelAndView profile = new
	 * ModelAndView("userProfile.jsp"); Users currentUser = (Users)
	 * session.getAttribute("user"); List<Users> users =
	 * repo.findByEmail(currentUser.getEmail()); Users userToUpdate = null; if
	 * (!users.isEmpty()) { userToUpdate = users.get(0);
	 * userToUpdate.setStatusMessage(user.getStatusMessage());
	 * 
	 * session.setAttribute("user", userToUpdate); repo.save(userToUpdate); }else {
	 * System.out.println("NO USER with this ID"); } return profile;
	 * 
	 * 
	 * }
	 */
	
	@PostMapping("/updateUser")
	public ModelAndView updateUser(@RequestBody Users user, HttpSession session) {
		ModelAndView profile = new ModelAndView("userProfile.jsp");
		Users currentUser = (Users) session.getAttribute("user");		
		List<Users> users = repo.findByEmail(currentUser.getEmail());
		Users userToUpdate = null;
		if (!users.isEmpty()) {
			userToUpdate = users.get(0);
			userToUpdate.setLastname(user.getLastname());
			userToUpdate.setPhonenr(user.getPhonenr());			
			userToUpdate.setImgpath( "profileImages/img-profile-missing.png" );	//////
			userToUpdate.setDescription(user.getDescription());
			userToUpdate.setLanguage(user.getLanguage());
			userToUpdate.setSex(user.getSex());
			userToUpdate.setAge(user.getAge());
			userToUpdate.setInterestedin(user.getInterestedin());
			userToUpdate.setEtnicity(user.getEtnicity());
			userToUpdate.setHeight(user.getHeight());
			userToUpdate.setWeight(user.getWeight());
			userToUpdate.setReligion(user.getReligion());
			userToUpdate.setRegion(user.getRegion());
			userToUpdate.setCountry(user.getCountry());
			userToUpdate.setCity_state(user.getCity_state());
			session.setAttribute("user", userToUpdate);
			repo.save(userToUpdate);
		}else {
			System.out.println("NO USER with this ID");
		}
		return profile;
	}
	
		
	public static String uploadDirectory = System.getProperty("user.dir") + "/src/main/webapp/profileImages";
	@PostMapping("uploadFiles")
	public String uploadFiles(Model model, @RequestParam("files") MultipartFile file, HttpSession session) {
		StringBuilder filenames = new StringBuilder();
		String username = ((Users)session.getAttribute("user")).getName();
		String userImagesPath = uploadDirectory + "/" + username;
		new File(userImagesPath).mkdir();
		Path filenameAndPath = Paths.get(userImagesPath,file.getOriginalFilename());
		filenames.append(file.getOriginalFilename());
		try {
			Files.write(filenameAndPath,file.getBytes());
		}catch(IOException e){
			e.printStackTrace();
		}
		Users currentUser = (Users) session.getAttribute("user");		
		List<Users> users = repo.findByEmail(currentUser.getEmail());
		Users userToUpdate = null;
		if (!users.isEmpty()) {
			userToUpdate = users.get(0);
			if( file.getOriginalFilename()==null || file.getOriginalFilename().equals("") ) {
				userToUpdate.setImgpath( "profileImages/img-profile-missing.png");
			}else {
				userToUpdate.setImgpath( "profileImages/"+username + "/" + file.getOriginalFilename() );				
			}
			
			System.out.println("Img: " + userToUpdate.getImgpath());
			session.setAttribute("user", userToUpdate);
			repo.save(userToUpdate);
		}else {
			System.out.println("uploadFilesFunction: NO USER with this ID");
		}
		return "userProfile.jsp";
	}
	
	
	@GetMapping("/logout")
	public ModelAndView logout(HttpSession session) {
		session.removeAttribute("user");
		session.invalidate();
		return (new ModelAndView("loginup.jsp"));
	}
	
	
	
	
	
	@PutMapping("/updateSmth")
	@ResponseBody
	public String upSmth(@RequestBody String data) {
		System.out.println("De la PUT: "+data);
	    ObjectMapper mapper = new ObjectMapper();
	    JsonNode actualObj;
		try {
			actualObj = mapper.readTree(data);
			System.out.println("Actual obj: "+actualObj);
		    // When
		    JsonNode jsonNode1 = actualObj.get("nume");
		    System.out.println("De la PUT: "+jsonNode1.textValue());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	 

		return data;
	}

	@RequestMapping("/getUser")
	public ModelAndView getUser(@RequestParam Long uid) {
		ModelAndView mv = new ModelAndView("showUser.jsp");
		Users user = repo.findById(uid).orElse(new Users());
		System.out.println(user.getId() + " " + user.getName());
		mv.addObject("user", user);
		mv.addObject("hw", "hello!");
		return mv;
	}
}
