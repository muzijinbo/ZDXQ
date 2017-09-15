package com.std.zdxq.services;

import java.util.List;

import com.std.zdxq.dao.NeedDao;
import com.std.zdxq.entities.Need;


public class NeedService {
	
	private NeedDao needDao;
	public void setNeedDao(NeedDao needDao) {
		this.needDao = needDao;
	}
	
	public List<Need> getAll(){
		return needDao.getAll();
	}
	
	public List<Need> get(String u_name,String n_name,String ids, String problem, String key){
		return needDao.get(u_name, n_name,ids,problem,key);
	}
}
