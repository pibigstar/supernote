package com.lei.service.impl;

import java.util.Date;
import java.util.List;
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
		
		note.setCreateTime(DateUtil.format(new Date()));
		note.setUpdateTime(DateUtil.format(new Date()));
		if (noteMapper.selectCount(note.getId())>0) {
			noteMapper.updateByPrimaryKey(note);
		}else {
			noteMapper.insertSelective(note);
		}
		
	}

	@Override
	public List<Note> getList(String userId) {
		
		return noteMapper.getListByUserId(userId);
	}

	@Override
	public Note getNote(String id) {
		return noteMapper.selectByPrimaryKey(id);
	}

	@Override
	public void update(Note note) {
		noteMapper.updateByPrimaryKeySelective(note);
		
	}
}
