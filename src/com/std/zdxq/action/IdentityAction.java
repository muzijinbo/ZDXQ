package com.std.zdxq.action;

import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import com.std.zdxq.entities.Identity;
import com.std.zdxq.services.IdentityService;

public class IdentityAction extends ActionSupport implements RequestAware,
ModelDriven<Identity>,Preparable{

	
	/**
	 * @author lijin
	 */
	private IdentityService identityService;
	public void setIdentityService(IdentityService identityService) {
		this.identityService = identityService;
	}
	
	public String list(){
		
		request.put("identitys", identityService.getAll());
		return "list";
	}
	
	private Integer i_id;
	public void setI_id(Integer i_id) {
		this.i_id = i_id;
	}
	public int getI_id() {
		return i_id;
	}
	
	public String delete(){		
		System.out.println("成功");
		identityService.delete(i_id);
		return "deleteSuccess";
	}
	
	public String edit(){
		this.model=identityService.get(i_id);
		System.out.println(model.getI_name());
		return SUCCESS;
	}
	public String input(){
		
		return INPUT;
	}
	public void prepareInput(){			
		//System.out.println(model.getI_name()+"*********");
		model = identityService.get(i_id);
	}
	
	private static final long serialVersionUID = 1L;
	@Override
	public void prepare() throws Exception {
		// TODO Auto-generated method stub	
	}

	private Identity model;

	@Override
	public Identity getModel() {
		return model;
	}

	public String save(){
		System.out.println(model.getI_name());
	    identityService.saveOrUpdate(model);
		return SUCCESS;
	}
	
	public void prepareSave(){
		if(i_id == null){
			model=new Identity();
		}
		else{
			model = identityService.get(i_id);
		}	
	}
	
	private Map<String, Object> request;
	@Override
	public void setRequest(Map<String, Object> request) {
		// TODO Auto-generated method stub
		this.request=request;	
	}
}
