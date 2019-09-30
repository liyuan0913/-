package com.action;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;


import org.apache.struts2.ServletActionContext;

import com.dao.TJiaoyuanDAO;
import com.dao.TTimuDAO;
import com.model.TTimu;
import com.opensymphony.xwork2.ActionSupport;

public class timuAction extends ActionSupport
{
	private int timuId;
	private String timuName;
	private String timuXuanxianga;
	private String timuXuanxiangb;
	
	private String timuXuanxiangc;
	private String timuXuanxiangd;
	private String timuDaan;
	private int timuFenshu;
	
	private String timuLeixing;
	private String del;
	
	private TTimuDAO timuDAO;
	
	
	
	public String timuAdd()
	{
		TTimu timu=new TTimu();
		
		timu.setTimuId(timuId);
		timu.setTimuName(timuName);
		timu.setTimuXuanxianga(timuXuanxianga);
		timu.setTimuXuanxiangb(timuXuanxiangb);
		
		timu.setTimuXuanxiangc(timuXuanxiangc);
		timu.setTimuXuanxiangd(timuXuanxiangd);
		timu.setTimuDaan(timuDaan.trim());
		timu.setTimuFenshu(timuFenshu);
		
		timu.setTimuLeixing("单选题");
		timu.setDel("no");
		
		timuDAO.save(timu);
		
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("msg", "信息添加完毕");
		return "msg";
	}
	
	
	
	

	public String timuMana()
	{
		String sql="from TTimu where del='no'";
		List timuList=timuDAO.getHibernateTemplate().find(sql);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("timuList", timuList);
		return ActionSupport.SUCCESS;
	}
	
	
	
	public String timuDel()
	{
		TTimu timu=timuDAO.findById(timuId);
		timu.setDel("yes");
		timuDAO.attachDirty(timu);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("msg", "信息删除完毕");
		return "msg";
	}
		
	public String timuDetail()
	{
		TTimu timu=timuDAO.findById(timuId);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("timu", timu);
		return ActionSupport.SUCCESS;
	}





	public int getTimuId()
	{
		return timuId;
	}





	public void setTimuId(int timuId)
	{
		this.timuId = timuId;
	}





	public String getTimuName()
	{
		return timuName;
	}





	public void setTimuName(String timuName)
	{
		this.timuName = timuName;
	}





	public String getTimuXuanxianga()
	{
		return timuXuanxianga;
	}





	public void setTimuXuanxianga(String timuXuanxianga)
	{
		this.timuXuanxianga = timuXuanxianga;
	}





	public String getTimuXuanxiangb()
	{
		return timuXuanxiangb;
	}





	public void setTimuXuanxiangb(String timuXuanxiangb)
	{
		this.timuXuanxiangb = timuXuanxiangb;
	}





	public String getTimuXuanxiangc()
	{
		return timuXuanxiangc;
	}





	public void setTimuXuanxiangc(String timuXuanxiangc)
	{
		this.timuXuanxiangc = timuXuanxiangc;
	}





	public String getTimuXuanxiangd()
	{
		return timuXuanxiangd;
	}





	public void setTimuXuanxiangd(String timuXuanxiangd)
	{
		this.timuXuanxiangd = timuXuanxiangd;
	}





	public String getTimuDaan()
	{
		return timuDaan;
	}





	public void setTimuDaan(String timuDaan)
	{
		this.timuDaan = timuDaan;
	}





	public int getTimuFenshu()
	{
		return timuFenshu;
	}





	public void setTimuFenshu(int timuFenshu)
	{
		this.timuFenshu = timuFenshu;
	}





	public String getTimuLeixing()
	{
		return timuLeixing;
	}





	public void setTimuLeixing(String timuLeixing)
	{
		this.timuLeixing = timuLeixing;
	}





	public String getDel()
	{
		return del;
	}





	public void setDel(String del)
	{
		this.del = del;
	}





	public TTimuDAO getTimuDAO()
	{
		return timuDAO;
	}





	public void setTimuDAO(TTimuDAO timuDAO)
	{
		this.timuDAO = timuDAO;
	}
	
}
