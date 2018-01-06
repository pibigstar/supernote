package com.lei.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lei.entity.Note;
import com.lei.entity.User;
import com.lei.service.NoteServiceI;
import com.lei.service.UserServiceI;

@Controller
public class UserInfoController {
	
	@Resource
	private NoteServiceI noteService;
	@Resource
	private UserServiceI userService;
	
	@RequestMapping(value="toMyInfo")
	public String toMyInfo(ModelMap modelMap,HttpSession session) {
		
		User user =(User)session.getAttribute("user");
		List<Note> notes = noteService.getList(user.getId());
		
		User newUser = userService.getUserById(user.getId());
		
		modelMap.put("user", newUser);
		
		modelMap.put("newNotes", notes);
		
		return "myInfo";
	}

}
