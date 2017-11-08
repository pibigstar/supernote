package com.lei.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import com.lei.dao.ClassifyMapper;
import com.lei.dao.NoteMapper;
import com.lei.entity.Classify;
import com.lei.entity.Note;
import com.lei.model.NoteModel;
import com.lei.service.ClassifyServiceI;
import com.lei.utils.DateUtil;

@Service("classifyService")
public class ClassifyServiceImpl implements ClassifyServiceI{

	@Resource
	private ClassifyMapper classifyMapper;
	@Resource
	private NoteMapper noteMapper;
	
	@Override
	public void addClassify(Classify classify) {
		
		classify.setUpdateTime(DateUtil.format(new Date()));
		classify.setCreateTime(DateUtil.format(new Date()));
		classifyMapper.insert(classify);
	}

	@Override
	public NoteModel getClassifyByPid(String pid) {
		//得到子分类
		List<Classify> classifies = classifyMapper.getClassifyByPid(pid);
		NoteModel models = new NoteModel();
		models.setClassifies(classifies);
		
		//自身下面的笔记
		List<Note> notes = noteMapper.getNotesByClassifyId(pid);
		models.setNotes(notes);
		return models;
	}

}
