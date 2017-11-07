package com.lei.service.impl;

import java.util.Date;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lei.dao.ClassifyMapper;
import com.lei.entity.Classify;
import com.lei.service.ClassifyServiceI;
import com.lei.utils.DateUtil;

@Service("classifyService")
public class ClassifyServiceImpl implements ClassifyServiceI{

	@Resource
	private ClassifyMapper classifyMapper;
	
	@Override
	public void addClassify(Classify classify) {
		
		classify.setUpdateTime(DateUtil.format(new Date()));
		classify.setCreateTime(DateUtil.format(new Date()));
		classifyMapper.insert(classify);
	}

}
