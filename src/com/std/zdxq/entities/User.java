package com.std.zdxq.entities;

public class User {
	private Integer u_id;
	private String u_name;
	private String u_pass;
	private String u_addr;
	private String u_netaddr;
	private String u_email;
	private String u_fname;
	private String u_postcode;
	private String u_linkman;
	private String u_telephone;
	private String u_phone;
	private String u_fax;
	private String u_otype;
	private String u_introduce;
	private Identity identity;
	private Dept dept;
	
	
	@Override
	public String toString() {
		return "User [u_id=" + u_id + ", u_name=" + u_name + ", u_pass=" + u_pass + ", u_addr=" + u_addr
				+ ", u_netaddr=" + u_netaddr + ", u_email=" + u_email + ", u_fname=" + u_fname + ", u_postcode="
				+ u_postcode + ", u_linkman=" + u_linkman + ", u_telephone=" + u_telephone + ", u_phone=" + u_phone
				+ ", u_fax=" + u_fax + ", u_otype=" + u_otype + ", u_introduce=" + u_introduce + ", identity="
				+ identity + ", dept.d_id=" + dept + "]";
	}
	public Integer getU_id() {
		return u_id;
	}
	
	public void setU_id(Integer u_id) {
		this.u_id = u_id;
	}
	public String getU_name() {
		return u_name;
	}
	public void setU_name(String u_name) {
		this.u_name = u_name;
	}
	public String getU_pass() {
		return u_pass;
	}
	public void setU_pass(String u_pass) {
		this.u_pass = u_pass;
	}
	public String getU_addr() {
		return u_addr;
	}
	public void setU_addr(String u_addr) {
		this.u_addr = u_addr;
	}
	public String getU_netaddr() {
		return u_netaddr;
	}
	public void setU_netaddr(String u_netaddr) {
		this.u_netaddr = u_netaddr;
	}
	public String getU_email() {
		return u_email;
	}
	public void setU_email(String u_email) {
		this.u_email = u_email;
	}
	public String getU_fname() {
		return u_fname;
	}
	public void setU_fname(String u_fname) {
		this.u_fname = u_fname;
	}
	public String getU_postcode() {
		return u_postcode;
	}
	public void setU_postcode(String u_postcode) {
		this.u_postcode = u_postcode;
	}
	public String getU_linkman() {
		return u_linkman;
	}
	public void setU_linkman(String u_linkman) {
		this.u_linkman = u_linkman;
	}
	public String getU_telephone() {
		return u_telephone;
	}
	public void setU_telephone(String u_telephone) {
		this.u_telephone = u_telephone;
	}
	public String getU_phone() {
		return u_phone;
	}
	public void setU_phone(String u_phone) {
		this.u_phone = u_phone;
	}
	public String getU_fax() {
		return u_fax;
	}
	public void setU_fax(String u_fax) {
		this.u_fax = u_fax;
	}
	public String getU_otype() {
		return u_otype;
	}
	public void setU_otype(String u_otype) {
		this.u_otype = u_otype;
	}
	public String getU_introduce() {
		return u_introduce;
	}
	public void setU_introduce(String u_introduce) {
		this.u_introduce = u_introduce;
	}
	public Identity getIdentity() {
		return identity;
	}
	public void setIdentity(Identity identity) {
		this.identity = identity;
	}
	public Dept getDept() {
		return dept;
	}
	public void setDept(Dept dept) {
		this.dept = dept;
	}
	
	
}
