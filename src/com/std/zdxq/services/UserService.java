package com.std.zdxq.services;

import java.util.List;

import com.std.zdxq.dao.UserDao;
import com.std.zdxq.entities.User;

public class UserService {

	private UserDao userdao;
	
	public void setUserdao(UserDao userdao) {
		this.userdao = userdao;
	}
	
	
	public List<User> getAll(){
		return userdao.getAll();
	}
	
	public void saveOrUpdate(User user){
		userdao.saveOrUpdate(user);
		System.out.println("UserSercice!!!!!!!!!!!!");
	}


	public void delete(Integer id) {
		userdao.delete(id);	
	}
	
	public boolean nameIsValid(String name){
		return userdao.getUserByName(name) == null;
	}
	
	
	public User get(Integer u_id) {
		return userdao.get(u_id);	
	}
}
