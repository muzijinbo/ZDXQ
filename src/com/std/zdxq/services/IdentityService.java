package com.std.zdxq.services;

import java.util.List;

import com.std.zdxq.dao.IdentityDao;
import com.std.zdxq.entities.Dept;
import com.std.zdxq.entities.Identity;
import com.std.zdxq.entities.User;

public class IdentityService {
	private IdentityDao identityDao;
	public void setIdentityDao(IdentityDao identityDao) {
		this.identityDao = identityDao;
	}
	
	public List<Identity> getAll(){
		return identityDao.getAll();
	}
	public void delete(Integer id) {
		identityDao.delete(id);	
	}

	public void saveOrUpdate(Identity model) {
		identityDao.saveOrUpdate(model);
	}
	public Identity get(Integer i_id) {
		return identityDao.get(i_id);	
	}
}
