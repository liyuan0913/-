package com.model;


public class TFenshu implements java.io.Serializable
{

	private Integer fenshuId;
	private Integer shitiId;
	private int stuId;
	private Integer fenshu;
	
	private TStu stu;
	private TShiti shiti;
	
	public Integer getFenshu()
	{
		return fenshu;
	}
	public void setFenshu(Integer fenshu)
	{
		this.fenshu = fenshu;
	}
	public Integer getFenshuId()
	{
		return fenshuId;
	}
	public void setFenshuId(Integer fenshuId)
	{
		this.fenshuId = fenshuId;
	}
	public Integer getShitiId()
	{
		return shitiId;
	}
	public void setShitiId(Integer shitiId)
	{
		this.shitiId = shitiId;
	}
	public int getStuId()
	{
		return stuId;
	}
	
	public TShiti getShiti() {
		return shiti;
	}
	public void setShiti(TShiti shiti) {
		this.shiti = shiti;
	}
	public void setStuId(int stuId)
	{
		this.stuId = stuId;
	}
	public TStu getStu()
	{
		return stu;
	}
	public void setStu(TStu stu)
	{
		this.stu = stu;
	}

}