package com.lei.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lei.entity.Classify;
import com.lei.model.JsonModel;
import com.lei.model.NoteModel;
import com.lei.service.ClassifyServiceI;

@Controller
@RequestMapping("classify")
public class ClassifyController {

	@Resource
	private ClassifyServiceI classifyService;
	
	@RequestMapping(params = "add",method = RequestMethod.POST)
	@ResponseBody
	public JsonModel addClassify(Classify classify) {
		
		classifyService.addClassify(classify);
		
		return null;
	}
	
	@RequestMapping(params = "select",method = RequestMethod.POST)
	@ResponseBody
	public JsonModel getClassify(String pid) {
		
		JsonModel j = new JsonModel();
		NoteModel noteModel = classifyService.getClassifyByPid(pid);
		j.setSuccess(true);
		j.setObjectl(noteModel);
	
		return j;
		
	}
	
	
}
