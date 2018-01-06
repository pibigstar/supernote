package com.lei.service.impl;

import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lei.dao.UserMapper;
import com.lei.entity.User;
import com.lei.service.UserServiceI;
import com.lei.utils.EncryptUtil;

@Service("userService")
public class UserServiceImpl implements UserServiceI{

	@Resource
	private UserMapper userMapper;
	
	@Override
	public User getUserByUsername(String username) {
		
		return userMapper.selectByUsername(username);
	}

	@Override
	public int regist(User user) {
		user.setId(UUID.randomUUID().toString());
		user.setPassword(EncryptUtil.e(user.getPassword()));
		return userMapper.insertSelective(user);
	}

	@Override
	public User login(User user) {
		user.setPassword(EncryptUtil.e(user.getPassword()));
		return userMapper.getUserByUser(user);
	}

	@Override
	public void update(User user) {
		userMapper.updateByPrimaryKeySelective(user);
	}

	@Override
	public User getUserById(String id) {
		return userMapper.selectByPrimaryKey(id);
	}

}
