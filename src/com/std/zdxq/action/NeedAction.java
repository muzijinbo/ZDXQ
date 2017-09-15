package com.std.zdxq.action;

import java.io.IOException;
import java.io.StringWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.RequestAware;

import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.ObjectWriter;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import com.std.zdxq.entities.Identity;
import com.std.zdxq.entities.Need;
import com.std.zdxq.entities.User;
import com.std.zdxq.services.IdentityService;
import com.std.zdxq.services.NeedService;
import com.std.zdxq.services.UserService;

public class NeedAction extends ActionSupport  implements RequestAware,
ModelDriven<Need>,Preparable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private NeedService needService; 
	public void setNeedService(NeedService needService) {
		this.needService = needService;
	}
	private UserService userService;
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	
	
	private int u_id;
	public void setU_id(int u_id) {
		this.u_id = u_id;
	}
	public int getU_id() {
		return u_id;
	}
	private String u_pass;
	private String randcode;
	private String problem;
	public void setProblem(String problem) {
		this.problem = problem;
	}
	public void setKey(String key) {
		this.key = key;
	}
	private String key;
	
	public  String input(){
		request.put("needuser", userService.get(u_id));
		return INPUT;
	}
	public void prepareInput(){
		System.out.println(u_id+"PrepareInput.....");	
	} 
	private int n_id;
	public void setN_id(int n_id) {
		this.n_id = n_id;
	}
	
	private String u_name;
	public void setU_name(String u_name) {
		this.u_name = u_name;
	}
	public String getU_name() {
		return u_name;
	}
	private String n_name;
	public void setN_name(String n_name) {
		this.n_name = n_name;
	}
	public String getN_name() {
		return n_name;
	}
	private String XSSHSatu;
	public void setXSSHSatu(String xSSHSatu) {
		XSSHSatu = xSSHSatu;
	}
	
	private String ids;
	public void setIds(String ids) {
		this.ids = ids;
	}
	
	public void list(){
		System.out.println(problem+"problem*****"+key+"key***");
		//System.out.println(ids+"***************************");
		List<Need> list = needService.get(u_name,n_name,ids,problem,key);
		//List<Need> list = needService.getAll();
		writeJson(list);
	}
	
	private Integer i_id;
	public void setI_id(Integer i_id) {
		this.i_id = i_id;
	}
	public Integer getI_id() {
		return i_id;
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
	
	
	@Override
	public void prepare() throws Exception {
		// TODO Auto-generated method stub
		
	}

	private User user;
	public void setUser(User user) {
		this.user = user;
	}
	
	private Need model;
	public void setModel(Need model) {
		this.model = model;
	}
	
	@Override
	public Need getModel() {
		// TODO Auto-generated method stub
		return model;
	}
	
	
	private Map<String, Object> request;
	@Override
	public void setRequest(Map<String, Object> arg0) {
		// TODO Auto-generated method stub
		this.request = arg0;
	}
	
}
