package com.lei.service.impl;

import java.util.Date;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lei.dao.NoteMapper;
import com.lei.entity.Note;
import com.lei.service.NoteServiceI;
import com.lei.utils.DateUtil;

@Service("noteService")
public class NoteServiceImpl implements NoteServiceI{

	@Resource
	private NoteMapper noteMapper;
	
	@Override
	public void save(Note note) {
		
		note.setId(UUID.randomUUID().toString());
		note.setCreateTime(DateUtil.format(new Date()));
		note.setUpdateTime(DateUtil.format(new Date()));
		
		noteMapper.insert(note);
	}
}
