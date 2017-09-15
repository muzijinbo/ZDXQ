package com.std.zdxq.dao;

import java.util.List;

import com.std.zdxq.entities.Need;

public class NeedDao extends BaseDao{
	
	
	public List<Need> getAll(){
		String hql = "from Need";
		return getSession().createQuery(hql).list();
	}
	
	public List<Need> get(String u_name,String n_name,String ids, String problem, String key){
		
		String hql = "from Need n where n.n_id != '' ";
		System.out.println(u_name);
		if(u_name!=null&&!u_name.equals("")){
			hql +=" and n.user.u_name ='"+u_name +"'";		
		}
		System.out.println(n_name);
		if(n_name!=null&&!n_name.equals("")){
			hql +=" and n.n_name ='"+ n_name+"'";	
		}
		if(problem!=null&&!problem.equals("")){
			hql +=" and n.n_problem like '%"+ problem+"%'";	
		}
		if(key!=null&&!key.equals("")){
			hql +=" and n.n_key like '%"+ key+"%'";	
		}
		//System.out.println(ids+"************NeedDao get()");
		if(ids!=null&&!ids.equals("")){
			String[] iids = ids.split(",");
			hql +="and (";
			for (int i = 0; i < iids.length; i++) {
				System.out.println(iids+"**********i");
				if(i==0){
					hql +=" n.xkfl LIKE '"+iids[i]+"%'";
				}
				else{
					hql +="or n.xkfl LIKE '"+iids[i]+"%'";
				}
			}
			hql +=")";
		}
		System.out.println(hql);
		
		return getSession().createQuery(hql).list();
	}
}
