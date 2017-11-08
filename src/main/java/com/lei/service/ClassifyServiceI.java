package com.lei.service;

import com.lei.entity.Classify;
import com.lei.model.NoteModel;

public interface ClassifyServiceI {
	

	public void addClassify(Classify classify);

	public NoteModel getClassifyByPid(String pid);
}
