<%@ page language="java" pageEncoding="UTF-8"%>
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
        
        <script language="javascript">
        </script>
	</head>

	<body leftmargin="2" topmargin="9" background='<%=path %>/img/allbg.gif'>
			<form action="<%=path %>/timu_danxuan_Add.action" name="formAdd" method="post">
				     <table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px">
						<tr bgcolor="#E7E7E7">
							<td height="10" colspan="21" background="<%=path %>/img/tbg.gif">&nbsp;&nbsp;</td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="10%" bgcolor="#FFFFFF" align="right">
						        题目名称：
						    </td>
						    <td width="90%" bgcolor="#FFFFFF" align="left">
						         ${requestScope.timu.timuName}
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" id="timuXuanxianga" height="22">
						    <td width="10%" bgcolor="#FFFFFF" align="right">
						        选项A：
						    </td>
						    <td width="90%" bgcolor="#FFFFFF" align="left">
						         ${requestScope.timu.timuXuanxianga}
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" id="timuXuanxiangb" height="22">
						    <td width="10%" bgcolor="#FFFFFF" align="right">
						        选项B：
						    </td>
						    <td width="90%" bgcolor="#FFFFFF" align="left">
						         ${requestScope.timu.timuXuanxianga}
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" id="timuXuanxiangc" height="22">
						    <td width="10%" bgcolor="#FFFFFF" align="right">
						        选项C：
						    </td>
						    <td width="90%" bgcolor="#FFFFFF" align="left">
						         ${requestScope.timu.timuXuanxiangb}
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" id="timuXuanxiangc" height="22">
						    <td width="10%" bgcolor="#FFFFFF" align="right">
						        选项D：
						    </td>
						    <td width="90%" bgcolor="#FFFFFF" align="left">
						         ${requestScope.timu.timuXuanxiangd}
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" height="22" id="radioo">
						    <td width="10%" bgcolor="#FFFFFF" align="right">
						        正确答案：
						    </td>
						    <td width="90%" bgcolor="#FFFFFF" align="left">
						        ${requestScope.timu.timuDaan}
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="10%" bgcolor="#FFFFFF" align="right">
						        分数：
						    </td>
						    <td width="90%" bgcolor="#FFFFFF" align="left">
						         ${requestScope.timu.timuFenshu}
						    </td>
						</tr>
					 </table>
			</form>
   </body>
</html>
