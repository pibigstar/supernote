package com.lei.model;

import java.util.List;

import com.lei.entity.Classify;
import com.lei.entity.Note;

public class NoteModel {
	
	private List<Note> notes;
    private List<Classify> classifies;
    

	public List<Classify> getClassifies() {
		return classifies;
	}

	public void setClassifies(List<Classify> classifies) {
		this.classifies = classifies;
	}

	public List<Note> getNotes() {
		return notes;
	}

	public void setNotes(List<Note> notes) {
		this.notes = notes;
	}

}
