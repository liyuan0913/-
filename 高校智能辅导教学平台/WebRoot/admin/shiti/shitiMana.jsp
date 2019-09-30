<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 

<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />
		<link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
		<script type="text/javascript" src="<%=path %>/js/popup.js"></script>
        <script language="javascript">
           function shitiDel(shitiId)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path %>/shitiDel.action?shitiId="+shitiId;
               }
           }
           
           function shitiAdd()
           {
                 var url="<%=path %>/admin/shiti/shitiAdd.jsp";
				 window.location.href=url;
           }
           
           function shiti_timu_update_pre(shitiId)
           {
				var strUrl = "<%=path %>/shiti_timu_update_pre.action?shitiId="+shitiId;
				var ret = window.showModalDialog(strUrl,"","dialogWidth:1000px; dialogHeight:600px; dialogLeft: status:no; directories:yes;scrollbars:yes;Resizable=no;");
           }
           
           function shiti_timu_liulan(shitiId)
           {
				var strUrl = "<%=path %>/shiti_timu_liulan.action?shitiId="+shitiId;
				var ret = window.showModalDialog(strUrl,"","dialogWidth:1000px; dialogHeight:600px; dialogLeft: status:no; directories:yes;scrollbars:yes;Resizable=no;");
           }
        </script>
	</head>

	<body leftmargin="2" topmargin="2" background='<%=path %>/img/allbg.gif'>
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="41" background="<%=path %>/img/tbg.gif">&nbsp;&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="5%">序号</td>
					<td width="30%">试卷名称</td>
					<td width="30%">试卷介绍</td>
					<td width="10%">发布时间</td>
					<td width="15%">操作</td>
		        </tr>	
				<s:iterator value="#request.shitiList" id="shiti" status="ss">
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#ss.index+1"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#shiti.shitiName"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#shiti.shitiJieshao"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#shiti.shitiShijian"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<a style="color: red" href="#" onclick="shitiDel(<s:property value="#shiti.shitiId"/>)" class="pn-loperator">删除</a>
						&nbsp;&nbsp;
						<a style="color: red" href="#" onclick="shiti_timu_liulan(<s:property value="#shiti.shitiId"/>)" class="pn-loperator">题目浏览</a>
						&nbsp;&nbsp;
						<a style="color: red" href="#" onclick="shiti_timu_update_pre(<s:property value="#shiti.shitiId"/>)" class="pn-loperator">重新组织题目</a>
					</td>
				</tr>
				</s:iterator>
			</table>
			
			<table width='98%'  border='0'style="margin-top:8px;margin-left: 11px;">
			  <tr>
			    <td>
			        <input type="button" value="添加学习试题" style="width: 123px;" onclick="shitiAdd()" />
			    </td>
			  </tr>
		    </table>
	</body>
</html>
