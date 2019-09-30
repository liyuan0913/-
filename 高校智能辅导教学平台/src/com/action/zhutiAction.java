package com.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.dao.THuifuDAO;
import com.dao.TStuDAO;
import com.dao.TZhutiDAO;
import com.model.TZhuti;
import com.opensymphony.xwork2.ActionSupport;

public class zhutiAction extends ActionSupport
{
	private int id;
	private String title;
	private String content;
	private String fujian;

	private String fujianYuanshiming;
	private String shijian;
	private Integer stuId;
	private Integer catelogId;
	
	private String shifouding;
	
	private String message;
	private String path;
	
	private TZhutiDAO zhutiDAO;
	private THuifuDAO huifuDAO;
	private TStuDAO stuDAO;
	
	
	public String zhutiAll()
	{
		String s2="from TZhuti where shifouding='是'";
		List zhuti_list_all=zhutiDAO.getHibernateTemplate().find(s2);
		
		String s3="from TZhuti where shifouding='否' order by shijian desc";
		List zhuti_list_fouzhiding=zhutiDAO.getHibernateTemplate().find(s3);
		
		for(int i=0;i<zhuti_list_fouzhiding.size();i++)
		{
			TZhuti zhuti=(TZhuti)zhuti_list_fouzhiding.get(i);
			zhuti_list_all.add(zhuti);
		}
		
		for(int j=0;j<zhuti_list_all.size();j++)
		{
			TZhuti zhuti=(TZhuti)zhuti_list_all.get(j);
			zhuti.setStu(stuDAO.findById(zhuti.getStuId()));
			zhuti.setHuifushu(huifuDAO.getHibernateTemplate().find("from THuifu where zhutiId="+zhuti.getId()).size());
		}
		
		HttpServletRequest req=ServletActionContext.getRequest();
		req.setAttribute("zhuti_list_all", zhuti_list_all);
		return ActionSupport.SUCCESS;
	}
	
	
	public String zhutiAdd()
	{
		TZhuti zhuti=new TZhuti();
		
		zhuti.setTitle(title);
		zhuti.setContent(content);
		zhuti.setFujian(fujian);
		zhuti.setFujianYuanshiming(fujianYuanshiming);
		
		zhuti.setShijian(new SimpleDateFormat("yyyy-MM-dd").format(new Date()) );
		zhuti.setStuId(stuId);
		zhuti.setCatelogId(catelogId);
		zhuti.setShifouding("否");
		zhuti.setShifoujing("否");
		
		zhutiDAO.save(zhuti);
		
		HttpServletRequest req=ServletActionContext.getRequest();
		req.setAttribute("msg", "成功发布新帖");
		return "msg";
	}
	
	
	public String zhutiByCatelog()
	{
		String s2="from TZhuti where catelogId="+catelogId+ "and shifouding='是'";
		List zhuti_list_all=zhutiDAO.getHibernateTemplate().find(s2);
		
		String s3="from TZhuti where catelogId="+catelogId+"and shifouding='否' order by shijian desc";
		List zhuti_list_fouzhiding=zhutiDAO.getHibernateTemplate().find(s3);
		
		for(int i=0;i<zhuti_list_fouzhiding.size();i++)
		{
			TZhuti zhuti=(TZhuti)zhuti_list_fouzhiding.get(i);
			zhuti_list_all.add(zhuti);
		}
		
		for(int j=0;j<zhuti_list_all.size();j++)
		{
			TZhuti zhuti=(TZhuti)zhuti_list_all.get(j);
			zhuti.setStu(stuDAO.findById(zhuti.getStuId()));
			zhuti.setHuifushu(huifuDAO.getHibernateTemplate().find("from THuifu where zhutiId="+zhuti.getId()).size());
		}
		
		HttpServletRequest req=ServletActionContext.getRequest();
		req.setAttribute("catelogId", catelogId);
		req.setAttribute("zhuti_list_all", zhuti_list_all);
		return ActionSupport.SUCCESS;
	}
	
	
	public String zhutiMana()
	{
		String s2="from TZhuti where shifouding='是'";
		List zhuti_list_all=zhutiDAO.getHibernateTemplate().find(s2);
		
		String s3="from TZhuti where shifouding='否' order by shijian desc";
		List zhuti_list_fouzhiding=zhutiDAO.getHibernateTemplate().find(s3);
		
		for(int i=0;i<zhuti_list_fouzhiding.size();i++)
		{
			TZhuti zhuti=(TZhuti)zhuti_list_fouzhiding.get(i);
			zhuti_list_all.add(zhuti);
		}
		
		for(int j=0;j<zhuti_list_all.size();j++)
		{
			TZhuti zhuti=(TZhuti)zhuti_list_all.get(j);
			zhuti.setStu(stuDAO.findById(zhuti.getStuId()));
			zhuti.setHuifushu(huifuDAO.getHibernateTemplate().find("from THuifu where zhutiId="+zhuti.getId()).size());
		}
		
		HttpServletRequest req=ServletActionContext.getRequest();
		req.setAttribute("zhuti_list_all", zhuti_list_all);
		return ActionSupport.SUCCESS;
	}
	
	
	public String zhutiDel()
	{
		
		TZhuti zhuti=zhutiDAO.findById(id);
		zhutiDAO.delete(zhuti);
		
		String sql="delete from THuifu where zhutiId="+zhuti.getId();
		huifuDAO.getHibernateTemplate().bulkUpdate(sql);
		
		
		HttpServletRequest req=ServletActionContext.getRequest();
		req.setAttribute("msg", "成功删除");
		return "msg";
	}
	
	
	

	public Integer getCatelogId()
	{
		return catelogId;
	}

	public void setCatelogId(Integer catelogId)
	{
		this.catelogId = catelogId;
	}

	public String getContent()
	{
		return content;
	}

	public void setContent(String content)
	{
		this.content = content;
	}

	public THuifuDAO getHuifuDAO()
	{
		return huifuDAO;
	}

	public void setHuifuDAO(THuifuDAO huifuDAO)
	{
		this.huifuDAO = huifuDAO;
	}

	public int getId()
	{
		return id;
	}
	public String getShifouding()
	{
		return shifouding;
	}

	public void setShifouding(String shifouding)
	{
		this.shifouding = shifouding;
	}

	public void setId(int id)
	{
		this.id = id;
	}


	public String getFujian()
	{
		return fujian;
	}

	public void setFujian(String fujian)
	{
		this.fujian = fujian;
	}

	public String getFujianYuanshiming()
	{
		return fujianYuanshiming;
	}

	public void setFujianYuanshiming(String fujianYuanshiming)
	{
		this.fujianYuanshiming = fujianYuanshiming;
	}

	public String getMessage()
	{
		return message;
	}

	public void setMessage(String message)
	{
		this.message = message;
	}

	public String getPath()
	{
		return path;
	}

	public void setPath(String path)
	{
		this.path = path;
	}

	public String getShijian()
	{
		return shijian;
	}

	public void setShijian(String shijian)
	{
		this.shijian = shijian;
	}

	public String getTitle()
	{
		return title;
	}

	public void setTitle(String title)
	{
		this.title = title;
	}





	public Integer getStuId() {
		return stuId;
	}


	public void setStuId(Integer stuId) {
		this.stuId = stuId;
	}


	public TStuDAO getStuDAO() {
		return stuDAO;
	}


	public void setStuDAO(TStuDAO stuDAO) {
		this.stuDAO = stuDAO;
	}


	public TZhutiDAO getZhutiDAO()
	{
		return zhutiDAO;
	}

	public void setZhutiDAO(TZhutiDAO zhutiDAO)
	{
		this.zhutiDAO = zhutiDAO;
	}
	
}
