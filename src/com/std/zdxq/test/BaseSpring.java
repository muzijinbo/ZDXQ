package com.std.zdxq.test;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.opensymphony.xwork2.interceptor.annotations.Before;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext*.xml")
public class BaseSpring {

	//public static ApplicationContext context;
	@Before
	public void startSpring(){
		//context = new ClassPathXmlApplicationContext("applicationContext*.xml");
		//SessionFactory sessionFactory = (SessionFactory) context.getBean("sessionFactory");
	}
}

