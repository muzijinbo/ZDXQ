package com.std.zdxq.services;

import java.util.List;

import com.std.zdxq.dao.DeptDao;
import com.std.zdxq.entities.Dept;

public class DeptService {
	private DeptDao deptDao;
	
	public void setDeptDao(DeptDao deptDao) {
		this.deptDao = deptDao;
	}
	
	public List<Dept> getAll(){
		return deptDao.getAll();
	}
}
