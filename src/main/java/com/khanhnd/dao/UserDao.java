package com.khanhnd.dao;



import com.khanhnd.model.User;

public class UserDao extends AbstractEntityDao<User> {
	
	public UserDao() {
		super(User.class);
	}
}
