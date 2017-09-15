package com.std.zdxq.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.std.zdxq.entities.User;

public class UserDao extends BaseDao{
	
	public List<User> getAll(){
		String hql = "from User u LEFT OUTER JOIN FETCH u.dept";
		return getSession().createQuery(hql).list();
	}
	
	public void saveOrUpdate(User user){
		getSession().saveOrUpdate(user);
	}

	public void delete(Integer id) {
		String hql = "DELETE FROM User u where u.u_id = ?";
		getSession().createQuery(hql).setInteger(0, id).executeUpdate();
	}
	
	public User getUserByName(String name){
		String hql = "FROM User u WHERE u.u_name = ?";
		Query query = getSession().createQuery(hql).setString(0, name);
		return (User) query.uniqueResult();
	}
	public User get(Integer u_id){
		return (User) getSession().get(User.class,u_id);
	}
	
	public User getUserById(int id){
		String hql = "FROM User u WHERE u.u_id = ?";
		Query query = getSession().createQuery(hql).setInteger(0, id);
		return (User) query.uniqueResult();
	}
	private HibernateTemplate hibernateTemplate;

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		// TODO Auto-generated method stub
		this.hibernateTemplate=hibernateTemplate;
	}
}
