package com.std.zdxq.test;

import static org.junit.Assert.*;

import org.hibernate.SessionFactory;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.std.zdxq.action.UserAction;
import com.std.zdxq.dao.UserDao;
import com.std.zdxq.services.IdentityService;
import com.std.zdxq.services.UserService;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;
import org.springframework.orm.hibernate3.HibernateTemplate;

public class ZDXQTest extends BaseSpring{
	
	
	@Autowired
	UserService userService;

	IdentityService identityService;
	
	@Before
	public void setUp() throws Exception {}
	

	@After
	public void tearDown() throws Exception {
	}
	@Test
	public void test() {
		//identityService.get(1);
		System.out.println(identityService.get(10));
		//System.out.println(userService.getAll());
	}

}
