package com.lei.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lei.entity.User;
import com.lei.model.JsonModel;
import com.lei.service.UserServiceI;

@Controller
@RequestMapping(value = "user")
public class UserController {
	
	@Resource
	private UserServiceI userService;
	
	/**
	 * 用户注册
	 * @param user
	 * @param modelMap
	 * @param session
	 * @return
	 */
	@RequestMapping(params = "regist",method = RequestMethod.POST)
	public String userRegist(User user, ModelMap modelMap,HttpSession session) {
		
		User exitUser = userService.getUserByUsername(user.getUsername());
		if (exitUser!=null) {
			modelMap.put("message", "该用户名已存在");
			return "userRegist";
		}
		
		int i =userService.regist(user);
		if (i==1) {
			session.setAttribute("user", exitUser);
			return "redirect:userLogin.jsp";
		}else {
			modelMap.put("message", "该用户名已存在");
			return "userRegist";
		}
		
	}
	
	/**
	 * 用户登录
	 * @param modelMap
	 * @param user
	 * @param session
	 * @return
	 */
	@RequestMapping(params = "login",method = RequestMethod.POST)
	public String login(ModelMap modelMap,User user,HttpSession session) {

		User exitUser = userService.login(user);
		
		if (exitUser!=null) {
			session.setAttribute("user", exitUser);
			return "redirect:index.jsp";
		}
		modelMap.put("message","登录失败，账号或密码错误！");
		return "userLogin";
		
	}
	/**
	 * 检查用户名是否已存在
	 * @param username
	 * @return
	 */
	@RequestMapping(params = "checkUsername",method = RequestMethod.POST)
	@ResponseBody
	public JsonModel checkUsername(String username) {
		
		JsonModel j = new JsonModel();
		
		User exitUser = userService.getUserByUsername(username);
		if (exitUser!=null) {
			j.setSuccess(false);
		}else {
			j.setMsg("此用户名已存在");
			j.setSuccess(true);
		}
		return j;
	}

}
