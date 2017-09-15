package com.std.zdxq.dao;

import java.util.List;

import com.std.zdxq.entities.Identity;

public class IdentityDao extends BaseDao{
	public List<Identity> getAll(){
		String hql ="FROM Identity";
		return getSession().createQuery(hql).list();
	}
	public void delete(Integer id) {
		String hql = "DELETE FROM Identity i where i.i_id = ?";
		getSession().createQuery(hql).setInteger(0, id).executeUpdate();
	}
	public void saveOrUpdate(Identity model) {
		getSession().saveOrUpdate(model);
	}
	public Identity get(Integer i_id){
		return (Identity) getSession().get(Identity.class,i_id); 
	}
	
}
