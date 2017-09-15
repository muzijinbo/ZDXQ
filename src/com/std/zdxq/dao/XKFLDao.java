package com.std.zdxq.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import com.std.zdxq.dto.TreeDTO;
import com.std.zdxq.entities.XKFL;

public class XKFLDao extends BaseDao{
	public List<TreeDTO> getNodes(String id){
		List<XKFL> xkflList = new ArrayList<XKFL>();
		String hql;
		
		if("".equals(id) || id == null){	
			hql = "from XKFL x where x.xk_id like '%00000'" ;	
			xkflList = getSession().createQuery(hql).list();
		}
		else if(id.length()==2){	
			hql = "from XKFL x where x.xk_id like '" + id +"%00' and x.xk_id != '"+ id +"00000'" ;	
			xkflList = getSession().createQuery(hql).list();
		}
		else if(id.length()==5){	
			hql = "from XKFL x where x.xk_id like '" + id +"%' and x.xk_id != '"+ id +"00'" ;	
			xkflList = getSession().createQuery(hql).list();
		}
		
		
		List<TreeDTO> tlist = new ArrayList<TreeDTO>();
		for (Iterator iterator = xkflList.iterator(); iterator.hasNext();) {
			XKFL XKFL = (XKFL) iterator.next();
			TreeDTO tree = new TreeDTO();
			if("".equals(id) || id == null){
				tree.setId(Integer.valueOf(XKFL.getXk_code1()));
			}
			else if(id.length()==2){
				tree.setId(Integer.valueOf(XKFL.getXk_code2()));
			}
			else if(id.length()==5){
				tree.setId(Integer.valueOf(XKFL.getXk_code3()));
			}
			tree.setText(XKFL.getXk_title());
			tree.setChecked(0);
			//if("".equals(id) || id == null){
			//	tree.setIconCls("icon-blank");
		//	}
			
			if("".equals(id) || id == null || id.length()==2){
				tree.setState("closed");
			}
		
		/*	Map<String, Object>  map = new HashMap<String, Object>();
			map.put("url", XKFL.getUrl());
			tree.setAttributes(map);*/	
			tlist.add(tree);
		}		
		return tlist;
	}
	public List<XKFL> getall(){
		 String hql = "from XKFL x where x.xk_id like '%00000'" ;	
		return getSession().createQuery(hql).list();
	 
	}
}
