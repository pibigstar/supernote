package com.lei.controller;

import static org.hamcrest.CoreMatchers.not;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lei.entity.Note;
import com.lei.entity.User;
import com.lei.service.NoteServiceI;

@Controller
@RequestMapping("note")
public class NoteController {

	@Resource
	private NoteServiceI noteService;
	
	@RequestMapping(params = "addNote",method = RequestMethod.POST)
	public String addNote(Note note,HttpSession session) {
		
		User user = (User)session.getAttribute("user");
		note.setUserId(user.getId());
		note.setnAuthor(user.getUsername());
		noteService.save(note);
		
		return "index";
	}
	
	
	
}
