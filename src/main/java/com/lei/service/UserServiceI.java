package com.lei.service;

import com.lei.entity.User;

public interface UserServiceI {
	
	public User getUserByUsername(String username);
	
	public int regist(User user);

	public User login(User user);

	public void update(User user);

	public User getUserById(String id);

}
