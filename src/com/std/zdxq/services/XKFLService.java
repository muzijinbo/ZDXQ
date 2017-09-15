package com.std.zdxq.services;

import java.util.List;

import com.std.zdxq.dao.XKFLDao;
import com.std.zdxq.dto.TreeDTO;
import com.std.zdxq.entities.XKFL;

public class XKFLService {
	private XKFLDao xkflDao;
	public void setXkflDao(XKFLDao xkflDao) {
		this.xkflDao = xkflDao;
	}
	
	public List<TreeDTO> getNodes(String id){
		return xkflDao.getNodes(id);
	}
	public List<XKFL> getall(){
		return xkflDao.getall();
	}
}
