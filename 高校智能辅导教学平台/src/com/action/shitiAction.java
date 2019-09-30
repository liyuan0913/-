package com.action;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.dao.TFenshuDAO;
import com.dao.TJiaoyuanDAO;
import com.dao.TShitiDAO;
import com.dao.TStuDAO;
import com.dao.TTimuDAO;
import com.model.TDoc;
import com.model.TFenshu;
import com.model.TJiaoyuan;
import com.model.TShiti;
import com.model.TStu;
import com.model.TTimu;
import com.opensymphony.xwork2.ActionSupport;

public class shitiAction extends ActionSupport
{
	private int shitiId;
	private int fenshuid;
	private String shitiName;
	private String shitiJieshao;
	private String timuIdList;
	 
	private String message;
	private String path;
	

	private TShitiDAO shitiDAO;
	private TTimuDAO timuDAO;
	private TJiaoyuanDAO jiaoyuanDAO;
	private TFenshuDAO fenshuDAO;
	private TStuDAO stuDAO;
	
	public String shitiAdd()
	{
		TShiti shiti=new TShiti();
		shiti.setShitiName(shitiName);
		shiti.setShitiJieshao(shitiJieshao);
		shiti.setTimuIdList("");
		shiti.setShitiShijian(new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
		shiti.setDel("no");
		shitiDAO.save(shiti);
		this.setMessage("操作成功");
		this.setPath("shitiMana.action");
		return "succeed";
	}
	
	
	
	public String shitiMana()
	{
		String sql="from TShiti where del='no'";
		List shitiList=shitiDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("shitiList", shitiList);
		return ActionSupport.SUCCESS;
	}
	
	public String shitiDel()
	{
		TShiti shiti=shitiDAO.findById(shitiId);
		shiti.setDel("yes");
		shitiDAO.attachDirty(shiti);
		this.setMessage("删除成功");
		this.setPath("shitiMana.action");
		return "succeed";
	}
	
	public String shiti_timu_update_pre()
	{
		String sql="from TTimu where del='no'";
		List timuList=timuDAO.getHibernateTemplate().find(sql);
		for(int i=0;i<timuList.size();i++)
		{
			TTimu timu=(TTimu)timuList.get(i);
		}
		
		HttpServletRequest request=ServletActionContext.getRequest();
		
		request.setAttribute("shitiId", request.getParameter("shitiId"));
		request.setAttribute("timuList", timuList);
		return ActionSupport.SUCCESS;
	}
	
	public String shiti_timu_update()
	{
		TShiti shiti=shitiDAO.findById(shitiId);
		shiti.setTimuIdList(timuIdList);
		shitiDAO.update(shiti);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("msg", "更新完毕");
		return "msg";
	}
	
	public String shiti_timu_liulan()
	{
		List timuList=new ArrayList();
		
		TShiti shiti=shitiDAO.findById(shitiId);
		String timuIdList=shiti.getTimuIdList();
		
		String[] s={};
		if(timuIdList.equals("")==false)
		{
			s=timuIdList.split(",");
		}
		for(int i=0;i<s.length;i++)
		{
			int timuId=Integer.parseInt(s[i].trim());
			TTimu timu=timuDAO.findById(timuId);
			timuList.add(timu);
		}
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("timuList", timuList);
		return ActionSupport.SUCCESS;
	}
	
	public String shiti_all()
	{
		String sql="from TShiti where del='no'";
		List shitiList=shitiDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("shitiList", shitiList);
		return ActionSupport.SUCCESS;
	}
	
	
	public String shiti_kaoshi_timu()
	{
		HttpServletRequest request=ServletActionContext.getRequest();
		Map session= ServletActionContext.getContext().getSession();
		TStu stu=(TStu)session.get("stu");
		int shitiId=Integer.parseInt(request.getParameter("shitiId"));
		
		String sql="from TJiaoyuan where shitiId=? and stuId=?";
		Object con[]={shitiId,stu.getStuId()};
		List jiaoyuanList=jiaoyuanDAO.getHibernateTemplate().find(sql,con);
		if(jiaoyuanList.size()>0)
		{
			request.setAttribute("msg", "您已经参加过。请不要重复考试");
			return "msg";
		}
		
		List timuList=new ArrayList();
		
		TShiti shiti=shitiDAO.findById(shitiId);
		String timuIdList=shiti.getTimuIdList();
		
		String[] s={};
		if(timuIdList.equals("")==false)
		{
			s=timuIdList.split(",");
		}
		for(int i=0;i<s.length;i++)
		{
			int timuId=Integer.parseInt(s[i].trim());
			TTimu timu=timuDAO.findById(timuId);
			timuList.add(timu);
		}
		
		request.setAttribute("timuList", timuList);
		request.setAttribute("shitiId", shitiId);
		return ActionSupport.SUCCESS;
	}
	
	
	public String shiti_jiaojuan()
	{
		HttpServletRequest request=ServletActionContext.getRequest();
		Map session= ServletActionContext.getContext().getSession();
		TStu stu=(TStu)session.get("stu");
		
		int fenshu=0;
		
		String timuIdList=shitiDAO.findById(shitiId).getTimuIdList();
		String[] s={};
		if(timuIdList.equals("")==false)
		{
			s=timuIdList.split(",");
		}
		for(int i=0;i<s.length;i++)
		{
			int timuId=Integer.parseInt(s[i].trim());
			String daAn="";//学生的答案
			
			String[] da_an=request.getParameterValues(String.valueOf(timuId));
			if(da_an !=null && da_an.length !=0)
			{
				for(int j=0;j<da_an.length;j++)
				{
					daAn=daAn+da_an[j];
				}
			}
			
			String zhengquedaan=timuDAO.findById(timuId).getTimuDaan();
			
			
			int fen=timuDAO.findById(timuId).getTimuFenshu();
			if(daAn.equals(zhengquedaan))
			{
				fenshu=fenshu+fen;
			}
			
			TJiaoyuan jiaoyuan=new TJiaoyuan();
			jiaoyuan.setStuId(stu.getStuId());
			jiaoyuan.setShitiId(shitiId);
			jiaoyuan.setTimuId(timuId);
			jiaoyuan.setTimuDaan(daAn);
			
			jiaoyuanDAO.save(jiaoyuan);
			
		}
		
		TFenshu fenshuxxxx=new TFenshu();
		
		fenshuxxxx.setShitiId(shitiId);
		fenshuxxxx.setStuId(stu.getStuId());
		fenshuxxxx.setFenshu(fenshu);
		
		fenshuDAO.save(fenshuxxxx);
		
		request.setAttribute("msg", "考试完毕，考试分数是："+fenshu);
		return "msg";
	}
	
	
	
	public String shiti_all1()
	{
		String sql="from TShiti where del='no'";
		List shitiList=shitiDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("shitiList", shitiList);
		return ActionSupport.SUCCESS;
	}
	
	
	public String shiti_fenshu_Mana()
	{
		HttpServletRequest request=ServletActionContext.getRequest();
		int shitiId=Integer.parseInt(request.getParameter("shitiId"));
		
		String sql="from TFenshu where shitiId=? order by fenshu desc";
		Object[] cc={shitiId};
		List fenshuList=fenshuDAO.getHibernateTemplate().find(sql,cc);
		for(int i=0;i<fenshuList.size();i++)
		{
			TFenshu fenshu=(TFenshu)fenshuList.get(i);
			fenshu.setStu(stuDAO.findById(fenshu.getStuId()));
			fenshu.setShiti(shitiDAO.findById(fenshu.getShitiId()));
		}
		
		request.setAttribute("fenshuList", fenshuList);
		return ActionSupport.SUCCESS;
	}
	
	public String fenshuDel()
	{
		TFenshu fenshu=fenshuDAO.findById(fenshuid);
		fenshuDAO.delete(fenshu);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("msg", "删除成功");
		return "msg";
	}
	
	public String fenshuMine()
	{
		HttpServletRequest request=ServletActionContext.getRequest();
		Map session= ServletActionContext.getContext().getSession();
		TStu stu=(TStu)session.get("stu");
		
		String sql="from TFenshu where stuId=?";
		Object[] cc={stu.getStuId()};
		List fenshuList=fenshuDAO.getHibernateTemplate().find(sql,cc);
		for(int i=0;i<fenshuList.size();i++)
		{
			TFenshu fenshu=(TFenshu)fenshuList.get(i);
			fenshu.setStu(stuDAO.findById(fenshu.getStuId()));
			fenshu.setShiti(shitiDAO.findById(fenshu.getShitiId()));
		}
		
		request.setAttribute("fenshuList", fenshuList);
		return ActionSupport.SUCCESS;
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

	public TShitiDAO getShitiDAO()
	{
		return shitiDAO;
	}

	public void setShitiDAO(TShitiDAO shitiDAO)
	{
		this.shitiDAO = shitiDAO;
	}



	public TTimuDAO getTimuDAO()
	{
		return timuDAO;
	}



	public void setTimuDAO(TTimuDAO timuDAO)
	{
		this.timuDAO = timuDAO;
	}



	public String getTimuIdList()
	{
		return timuIdList;
	}



	public void setTimuIdList(String timuIdList)
	{
		this.timuIdList = timuIdList;
	}



	public TJiaoyuanDAO getJiaoyuanDAO()
	{
		return jiaoyuanDAO;
	}



	public void setJiaoyuanDAO(TJiaoyuanDAO jiaoyuanDAO)
	{
		this.jiaoyuanDAO = jiaoyuanDAO;
	}



	public int getShitiId()
	{
		return shitiId;
	}

	public void setShitiId(int shitiId)
	{
		this.shitiId = shitiId;
	}

	public String getShitiJieshao()
	{
		return shitiJieshao;
	}

	public void setShitiJieshao(String shitiJieshao)
	{
		this.shitiJieshao = shitiJieshao;
	}

	public String getShitiName()
	{
		return shitiName;
	}

	public TFenshuDAO getFenshuDAO()
	{
		return fenshuDAO;
	}



	public void setFenshuDAO(TFenshuDAO fenshuDAO)
	{
		this.fenshuDAO = fenshuDAO;
	}



	public TStuDAO getStuDAO()
	{
		return stuDAO;
	}



	public void setStuDAO(TStuDAO stuDAO)
	{
		this.stuDAO = stuDAO;
	}



	public void setShitiName(String shitiName)
	{
		this.shitiName = shitiName;
	}



	public int getFenshuid() {
		return fenshuid;
	}



	public void setFenshuid(int fenshuid) {
		this.fenshuid = fenshuid;
	}
	
}
