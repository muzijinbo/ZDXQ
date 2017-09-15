package com.std.zdxq.action;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.RequestAware;

import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import com.std.zdxq.entities.Identity;
import com.std.zdxq.entities.User;
import com.std.zdxq.services.DeptService;
import com.std.zdxq.services.IdentityService;
import com.std.zdxq.services.UserService;

public class UserAction extends ActionSupport implements RequestAware,
ModelDriven<User>,Preparable
{	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private UserService userService;
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	
	public DeptService deptService;
	public void setDeptService(DeptService deptService) {
		this.deptService = deptService;
	}

	public String list(){
		request.put("users", userService.getAll());
		//System.out.println(userService.getAll());
		return "list";
	}
	
	
	private Integer u_id;
	public void setU_id(Integer u_id) {
		this.u_id = u_id;
	}
	public Integer getU_id() {
		return u_id;
	}
	private String u_pass;
	private String randcode;
	
	
	public String getU_pass() {
		return u_pass;
	}

	public void setU_pass(String u_pass) {
		this.u_pass = u_pass;
	}

	public String getRandcode() {
		return randcode;
	}

	public void setRandcode(String randcode) {
		this.randcode = randcode;
	}
	
	
	public String check(){
		HttpServletRequest httprequest = ServletActionContext.getRequest();
		String sessionCode = (String) httprequest.getSession().getAttribute("rand");
		System.out.println("sessionCode"+sessionCode+"u_id"+getU_id()+"u_pass"+u_pass+"randcode:"+randcode);
		User u = userService.get(u_id);
		if(!sessionCode.equals(randcode)){
			ActionContext.getContext().put("msg","验证码错误");
			return LOGIN;
		}
		else{
			System.out.println("getu_pass:" +u.getU_pass() );
			if(!u.getU_pass().equals(u_pass)){
				ActionContext.getContext().put("msg","密码错误");
				return LOGIN;
			}
			else{
				
				setModel(u);
				return "index";
			}
		}
	}


	private InputStream inputStream;
	public InputStream getInputStream() {
		return inputStream;
	}
	
	
	public String getJsonString(Object o){
		ObjectMapper om = new ObjectMapper();
		StringWriter sw = new StringWriter();
		try {
			JsonGenerator jg = new JsonFactory().createJsonGenerator(sw);
			om.writeValue(jg, o);
			jg.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return sw.toString();
	}
	public void writeJson(Object o){
		String json = getJsonString(o);
		try {
			ServletActionContext.getResponse().setCharacterEncoding("UTF-8");
			ServletActionContext.getResponse().getWriter().write(json);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	public void getIdentity(){
		System.out.println(u_id+"************************");

		Identity identity = userService.get(u_id).getIdentity();
		System.out.println(identity+"************************");
		writeJson(identity);
	}
	
	public String showUser(){
		
		try {
			inputStream = new ByteArrayInputStream(userService.get(u_id).toString().getBytes("UTF-8"));
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "Ajax-success";

	}
	
	public String delete(){	
		try {
			
			userService.delete(u_id);
			
			inputStream = new ByteArrayInputStream("1".getBytes("UTF-8"));
		} catch (Exception e) {
			e.printStackTrace();
			try {
				inputStream = new ByteArrayInputStream("0".getBytes("UTF-8"));
			} catch (UnsupportedEncodingException e1) {
				e1.printStackTrace();
			}
			
		}
		return "Ajax-success";
	}
	
	public String input(){
		request.put("depts",deptService.getAll());
		return INPUT;
	}
	
	public void prepareInput(){
		if(u_id != null){
			model = userService.get(u_id);
		}
	}
	
	public String save(){
		System.out.println(model);
		userService.saveOrUpdate(model);
		return SUCCESS;
	}
	
	
	public void prepareSave(){
		model=new User();
	}
	
	private String u_name;
	public void setU_name(String u_name) {
		this.u_name = u_name;
	}
	
	
	public String checkName() {
		
		if(userService.nameIsValid(u_name)){
			try {
				inputStream = new ByteArrayInputStream("1".getBytes("UTF-8"));
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else{
			try {
				inputStream = new ByteArrayInputStream("0".getBytes("UTF-8"));
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return "Ajax-success";
	}
	
	private Map<String, Object> request;
	@Override
	public void setRequest(Map<String, Object> arg0) {
		// TODO Auto-generated method stub
		this.request = arg0;
	}
	
	private User model;
	public void setModel(User model) {
		this.model = model;
	}
	
	@Override
	public User getModel() {
		// TODO Auto-generated method stub
		return model;
	}
	@Override
	public void prepare() throws Exception {
		// TODO Auto-generated method stub		
	}
}
