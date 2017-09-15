package com.std.zdxq.action;

import java.io.IOException;
import java.io.StringWriter;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.RequestAware;

import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import com.std.zdxq.dto.TreeDTO;
import com.std.zdxq.entities.User;
import com.std.zdxq.entities.XKFL;
import com.std.zdxq.services.XKFLService;

public class TreeAction extends ActionSupport implements RequestAware,Preparable{

	/**
	 * 
	 */
	private XKFLService xkflService;
	public void setXkflService(XKFLService xkflService) {
		this.xkflService = xkflService;
	}
	private static final long serialVersionUID = 1L;

	@Override
	public void prepare() throws Exception {	
	}
	private Map<String, Object> request;

	@Override
	public void setRequest(Map<String, Object> request) {
		// TODO Auto-generated method stub
		this.request=request;
	}
	
	private String id;
	public void setId(String id) {
		this.id = id;
	}
	public void getNodes(){
		System.out.println(id+"************treeAction id");
		//List<XKFL> List= xkflService.getall();
		List<TreeDTO> tList= xkflService.getNodes(id);
		writeJson(tList);	
		id = null;	
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
}
