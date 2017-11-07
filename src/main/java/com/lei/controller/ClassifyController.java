package com.lei.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lei.entity.Classify;
import com.lei.model.JsonModel;
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
	
	
}
