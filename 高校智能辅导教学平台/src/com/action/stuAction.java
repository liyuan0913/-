package com.action;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import com.dao.TStuDAO;
import com.model.TStu;
import com.opensymphony.xwork2.ActionSupport;

public class stuAction extends ActionSupport
{
	private Integer stuId;
	private String stuXuehao;
	private String stuRealname;
	private String stuSex;

	private String stuAge;
	private String email;
	private String dianhua;
	private String loginPw;
	
	private String del;
	 
	private String message;
	private String path;
	
	private TStuDAO stuDAO;
	
	public String stuReg()
	{
		String sql="from TStu where stuXuehao=? and del='no'";
		Object[] c={stuXuehao.trim()};
		List stulist=stuDAO.getHibernateTemplate().find(sql,c);
		if(stulist.size()>0)
		{
			this.setMessage("学号已经注册，请直接登录");
			this.setPath("qiantai/default.jsp");
			return "succeed";
		}
		
		TStu stu=new TStu();
		
		//stu.setStuId(stuId);
		stu.setStuXuehao(stuXuehao);
		stu.setStuRealname(stuRealname);
		stu.setStuSex(stuSex);
		
		stu.setStuAge(stuAge);
		stu.setEmail(email);
		stu.setDianhua(dianhua);
		stu.setLoginPw(loginPw);
		
		stu.setDel("no");
		
		stuDAO.save(stu);
		
		this.setMessage("注册成功请登录");
		this.setPath("qiantai/default.jsp");
		return "succeed";
	}
	
	public String stuAdd()
	{
		String sql="from TStu where stuXuehao=? and del='no'";
		Object[] c={stuXuehao.trim()};
		List stulist=stuDAO.getHibernateTemplate().find(sql,c);
		if(stulist.size()>0)
		{
			Map request=(Map)ServletActionContext.getContext().get("request");
			request.put("msg", "学号已经添加，不要重复添加");
			return "msg";
		}
		
		TStu stu=new TStu();
		
		//stu.setStuId(stuId);
		stu.setStuXuehao(stuXuehao);
		stu.setStuRealname(stuRealname);
		stu.setStuSex(stuSex);
		
		stu.setStuAge(stuAge);
		stu.setEmail(email);
		stu.setDianhua(dianhua);
		stu.setLoginPw(loginPw);
		
		stu.setDel("no");
		
		stuDAO.save(stu);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("msg", "信息添加成功");
		return "msg";
	}
	
	
	
	public String stuMana()
	{
		String sql="from TStu where del='no'";
		List stuList=stuDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("stuList", stuList);
		return ActionSupport.SUCCESS;
	}
	
	
	public String stuDel()
	{
		TStu stu=stuDAO.findById(stuId);
		stu.setDel("yes");
		stuDAO.attachDirty(stu);
		this.setMessage("删除成功");
		this.setPath("stuMana.action");
		return "succeed";
	}
		
	
	public String stuEditMe()
	{
		TStu stu=stuDAO.findById(stuId);
		
		//stu.setStuId(stuId);
		stu.setStuXuehao(stuXuehao);
		stu.setStuRealname(stuRealname);
		stu.setStuSex(stuSex);
		
		stu.setStuAge(stuAge);
		stu.setEmail(email);
		stu.setDianhua(dianhua);
		stu.setLoginPw(loginPw);
		
		stu.setDel("no");
		
		stuDAO.attachDirty(stu);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("msg", "修改成功，重新登录后生效");
		return "msg";
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
	public TStuDAO getStuDAO()
	{
		return stuDAO;
	}
	public void setStuDAO(TStuDAO stuDAO)
	{
		this.stuDAO = stuDAO;
	}
	public void setPath(String path)
	{
		this.path = path;
	}
	public String getStuAge()
	{
		return stuAge;
	}
	
	public String getLoginPw()
	{
		return loginPw;
	}
	public void setLoginPw(String loginPw)
	{
		this.loginPw = loginPw;
	}
	public void setStuAge(String stuAge)
	{
		this.stuAge = stuAge;
	}
	public int getStuId()
	{
		return stuId;
	}
	public void setStuId(int stuId)
	{
		this.stuId = stuId;
	}
	public String getStuRealname()
	{
		return stuRealname;
	}
	public void setStuRealname(String stuRealname)
	{
		this.stuRealname = stuRealname;
	}
	public String getStuSex()
	{
		return stuSex;
	}
	public void setStuSex(String stuSex)
	{
		this.stuSex = stuSex;
	}
	public String getStuXuehao()
	{
		return stuXuehao;
	}
	public void setStuXuehao(String stuXuehao)
	{
		this.stuXuehao = stuXuehao;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDianhua() {
		return dianhua;
	}

	public void setDianhua(String dianhua) {
		this.dianhua = dianhua;
	}

	public String getDel() {
		return del;
	}

	public void setDel(String del) {
		this.del = del;
	}

	public void setStuId(Integer stuId) {
		this.stuId = stuId;
	}
	
}
