package com.std.zdxq.entities;

public class Need {
	
	private Integer n_id;
	private User user;
	private String n_name;
	private String n_timeMin;
	private String n_timeMax;
	private String n_introduce;
	private String n_problem;
	
	private String n_key;
	private String n_target;
	private String n_key1;
	private String n_key2;
	private String n_key3;
	private String n_key4;
	private String n_key5;
	private String n_money;
	private String n_SType;
	private String n_OTarget;
	private XKFL xkfl;
	private GMJJ gmjj;
	

	public Integer getN_id() {
		return n_id;
	}
	public void setN_id(Integer n_id) {
		this.n_id = n_id;
	}
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getN_name() {
		return n_name;
	}
	public void setN_name(String n_name) {
		this.n_name = n_name;
	}
	public String getN_timeMin() {
		return n_timeMin;
	}
	public void setN_timeMin(String n_timeMin) {
		this.n_timeMin = n_timeMin;
	}
	public String getN_timeMax() {
		return n_timeMax;
	}
	public void setN_timeMax(String n_timeMax) {
		this.n_timeMax = n_timeMax;
	}
	public String getN_introduce() {
		return n_introduce;
	}
	public void setN_introduce(String n_introduce) {
		this.n_introduce = n_introduce;
	}
	public String getN_problem() {
		return n_problem;
	}
	public void setN_problem(String n_problem) {
		this.n_problem = n_problem;
	}
	public String getN_key() {
		return n_key;
	}
	public void setN_key(String n_key) {
		this.n_key = n_key;
	}
	public String getN_target() {
		return n_target;
	}
	public void setN_target(String n_target) {
		this.n_target = n_target;
	}
	public String getN_key1() {
		return n_key1;
	}
	public void setN_key1(String n_key1) {
		this.n_key1 = n_key1;
	}
	public String getN_key2() {
		return n_key2;
	}
	public void setN_key2(String n_key2) {
		this.n_key2 = n_key2;
	}
	public String getN_key3() {
		return n_key3;
	}
	public void setN_key3(String n_key3) {
		this.n_key3 = n_key3;
	}
	public String getN_key4() {
		return n_key4;
	}
	public void setN_key4(String n_key4) {
		this.n_key4 = n_key4;
	}
	public String getN_key5() {
		return n_key5;
	}
	public void setN_key5(String n_key5) {
		this.n_key5 = n_key5;
	}
	public String getN_money() {
		return n_money;
	}
	public void setN_money(String n_money) {
		this.n_money = n_money;
	}
	public String getN_SType() {
		return n_SType;
	}
	public void setN_SType(String n_SType) {
		this.n_SType = n_SType;
	}
	public String getN_OTarget() {
		return n_OTarget;
	}
	public void setN_OTarget(String n_OTarget) {
		this.n_OTarget = n_OTarget;
	}
	public XKFL getXkfl() {
		return xkfl;
	}
	public void setXkfl(XKFL xkfl) {
		this.xkfl = xkfl;
	}
	public GMJJ getGmjj() {
		return gmjj;
	}
	public void setGmjj(GMJJ gmjj) {
		this.gmjj = gmjj;
	}
	
	public String getYjlx() {
		return yjlx;
	}
	public void setYjlx(String yjlx) {
		this.yjlx = yjlx;
	}
	public String getXssh() {
		return xssh;
	}
	public void setXssh(String xssh) {
		this.xssh = xssh;
	}
	public String getBmsh() {
		return bmsh;
	}
	public void setBmsh(String bmsh) {
		this.bmsh = bmsh;
	}
	public BM getBm() {
		return bm;
	}
	public void setBm(BM bm) {
		this.bm = bm;
	}
	public String getXsOpinion() {
		return xsOpinion;
	}
	public void setXsOpinion(String xsOpinion) {
		this.xsOpinion = xsOpinion;
	}
	public String getBmOpinion() {
		return bmOpinion;
	}
	public void setBmOpinion(String bmOpinion) {
		this.bmOpinion = bmOpinion;
	}
	private String yjlx;
	private String xssh;//形式审核
	private String bmsh;//部门审核
	private BM bm;//部门
	private String xsOpinion;//形式审核意见
	private String bmOpinion;//部门审核意见
	
	
}
