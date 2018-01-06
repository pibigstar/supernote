package com.lei.service;

import java.util.List;

import com.lei.entity.Note;

public interface NoteServiceI {

	public void save(Note note);

	public List<Note> getList(String userId);

	public Note getNote(String id);

	public void update(Note note);
	
}
