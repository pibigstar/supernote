package com.lei.controller;

import static org.hamcrest.CoreMatchers.not;

import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lei.entity.Note;
import com.lei.entity.User;
import com.lei.service.NoteServiceI;

@Controller
public class NoteController {

	@Resource
	private NoteServiceI noteService;
	
	@RequestMapping(value="addNote",method = RequestMethod.POST)
	public String addNote(Note note,HttpSession session) {
		
		User user = (User)session.getAttribute("user");
		if (note.getId()==null||"".equals(note.getId())) {
			note.setId(UUID.randomUUID().toString());
		}
		note.setUserId(user.getId());
		note.setnAuthor(user.getUsername());
		noteService.save(note);
		
		return "redirect:toIndex.do";
	}
	
	@RequestMapping(value="updateNote",method = RequestMethod.POST)
	public String updateNote(Note note,HttpSession session) {
		noteService.update(note);
		return "redirect:toIndex.do";
	}
	
	@RequestMapping(value = "showNote")
	public String showNote(Note note,ModelMap modelMap,HttpSession session) {
		User user =(User)session.getAttribute("user");
		List<Note> notes = noteService.getList(user.getId());
		
		Note myNote = noteService.getNote(note.getId());
		
		modelMap.put("myNote", myNote);
		
		modelMap.put("newNotes", notes);
		
		return "showNote";
		
	}
	
	@RequestMapping("toIndex")
	public String toIndex(Note note,ModelMap modelMap,HttpSession session) {
		
		User user =(User)session.getAttribute("user");
		List<Note> notes = noteService.getList(user.getId());
		
		Note myNote = noteService.getNote(note.getId());
		
		modelMap.put("myNote", myNote);
		
		modelMap.put("newNotes", notes);
		
		return "index";
		
	}

}
