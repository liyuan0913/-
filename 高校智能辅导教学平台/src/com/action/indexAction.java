package com.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TCatelogDAO;
import com.dao.TGonggaoDAO;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class indexAction extends ActionSupport
{
	private TGonggaoDAO gonggaoDAO;
	private TCatelogDAO catelogDAO;
	
	public TGonggaoDAO getGonggaoDAO()
	{
		return gonggaoDAO;
	}

	public void setGonggaoDAO(TGonggaoDAO gonggaoDAO)
	{
		this.gonggaoDAO = gonggaoDAO;
	}

	public String index()
	{
		
		String sql="from TGonggao order by gonggaoId desc";
		List gonggaoList =gonggaoDAO.getHibernateTemplate().find(sql);
		if(gonggaoList.size()>3)
		{
			gonggaoList=gonggaoList.subList(0, 5);
		}
		Map session=ActionContext.getContext().getSession();
		session.put("gonggaoList", gonggaoList);
		
		
		String sql0="from TCatelog where catelogDel='no'";
		List cateLogList=catelogDAO.getHibernateTemplate().find(sql0);
		session.put("cateLogList", cateLogList);
		
		return ActionSupport.SUCCESS;
	}

	public TCatelogDAO getCatelogDAO() {
		return catelogDAO;
	}

	public void setCatelogDAO(TCatelogDAO catelogDAO) {
		this.catelogDAO = catelogDAO;
	}
}