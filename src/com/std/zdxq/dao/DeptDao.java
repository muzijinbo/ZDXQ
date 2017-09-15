package com.std.zdxq.dao;

import java.util.List;

import com.std.zdxq.entities.Dept;

public class DeptDao extends BaseDao{
	
	public List<Dept> getAll(){
		String hql ="FROM Dept";
		return getSession().createQuery(hql).list();
		
	}

}
