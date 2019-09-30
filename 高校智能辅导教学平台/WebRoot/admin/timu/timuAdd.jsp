<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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
        
        <script language="javascript">
            function c()
            {
                if(document.formAdd.timuName.value=="")
                {
                    alert("请输入题目名称");
                    return false;
                }
                document.formAdd.submit();
            }
        </script>
	</head>

	<body leftmargin="2" topmargin="9" background='<%=path %>/img/allbg.gif'>
			<form action="<%=path %>/timuAdd.action" name="formAdd" method="post">
				     <table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px">
						<tr bgcolor="#EEF4EA">
					        <td colspan="3" background="<%=path %>/img/wbg.gif" class='title'><span>&nbsp;</span></td>
					    </tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="10%" bgcolor="#FFFFFF" align="right">
						        题目名称：
						    </td>
						    <td width="90%" bgcolor="#FFFFFF" align="left">
						         <input type="text" name="timuName" style="width: 400px;"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" id="timuXuanxianga" height="22">
						    <td width="10%" bgcolor="#FFFFFF" align="right">
						        选项A：
						    </td>
						    <td width="90%" bgcolor="#FFFFFF" align="left">
						         <input type="text" name="timuXuanxianga" style="width: 400px;"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" id="timuXuanxiangb" height="22">
						    <td width="10%" bgcolor="#FFFFFF" align="right">
						        选项B：
						    </td>
						    <td width="90%" bgcolor="#FFFFFF" align="left">
						         <input type="text" name="timuXuanxiangb" style="width: 400px;"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" id="timuXuanxiangc" height="22">
						    <td width="10%" bgcolor="#FFFFFF" align="right">
						        选项C：
						    </td>
						    <td width="90%" bgcolor="#FFFFFF" align="left">
						         <input type="text" name="timuXuanxiangc" style="width: 400px;"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" id="timuXuanxiangd" height="22">
						    <td width="10%" bgcolor="#FFFFFF" align="right">
						        选项D：
						    </td>
						    <td width="90%" bgcolor="#FFFFFF" align="left">
						         <input type="text" name="timuXuanxiangd" style="width: 400px;"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" height="22" id="radioo">
						    <td width="10%" bgcolor="#FFFFFF" align="right">
						        正确答案：
						    </td>
						    <td width="90%" bgcolor="#FFFFFF" align="left">
						        <input type="radio" name="timuDaan" value="A" style="border: 0px;" checked="checked"/>A
						        &nbsp;&nbsp;&nbsp;
						        <input type="radio" name="timuDaan" value="B" style="border: 0px;"/>B
						        &nbsp;&nbsp;&nbsp;
						        <input type="radio" name="timuDaan" value="C" style="border: 0px;"/>C
						        &nbsp;&nbsp;&nbsp;
						        <input type="radio" name="timuDaan" value="D" style="border: 0px;"/>D
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="10%" bgcolor="#FFFFFF" align="right">
						        题目分数：
						    </td>
						    <td width="90%" bgcolor="#FFFFFF" align="left">
						         <input type="text" value="10" name="timuFenshu" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')" style="width: 400px;"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="10%" bgcolor="#FFFFFF" align="right">
						        &nbsp;
						    </td>
						    <td width="90%" bgcolor="#FFFFFF" align="left">
						       <input type="button" value="提交" onclick="c()"/>&nbsp; 
						       <input type="reset" value="重置"/>&nbsp;
						    </td>
						</tr>
					 </table>
			</form>
   </body>
</html>
