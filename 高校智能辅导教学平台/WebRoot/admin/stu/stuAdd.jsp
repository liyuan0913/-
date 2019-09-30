<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page isELIgnored="false" %> 

<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
	    <base target="_self"/>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />
        
        <link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
        
        <script language="javascript">
                function check()
		        {
		             if(document.formAdd.stuXuehao.value=="")
		             {
		                 alert("请输入学号");
		                 return false;
		             }
		             if(document.formAdd.stuRealname.value=="")
		             {
		                 alert("请输入姓名");
		                 return false;
		             }
		             
		             if(document.formAdd.email.value=="")
		             {
		                 alert("请输入邮箱");
		                 return false;
		             }
		             
		             if(document.formAdd.email.value !="")
					 {
					      if (!isEmail(document.formAdd.email.value))
					      {
						  alert("您输入的邮箱格式有误,请重新核对后再输入!");
						  return false;
					      }
					 }
					 
					 if(document.formAdd.dianhua.value=="")
		             {
		                 alert("请输入电话");
		                 return false;
		             }
		             
		             if(document.formAdd.dianhua.value !="")
					 {
					    var sMobile = document.formAdd.dianhua.value; 
						    if(!(/^1[3|4|5|8][0-9]\d{4,8}$/.test(sMobile)))
						    { 
						        alert("请输入正确的11位手机号"); 
						        return false; 
						    }
					 }
					 
					 if(document.formAdd.loginPw.value=="")
		             {
		                 alert("请输入密码");
		                 return false;
		             }
		             
		             if(document.formAdd.loginPw.value.length<6)
					 {
					    alert("密码不能小于6位");
					    return false;
					 }
		             
		             document.formAdd.submit();
		        }
		        
		        function isEmail(str)
				{
				    var reg = /^(\w)+(\.\w+)*@(\w)+((\.\w+)+)$/;
				    return reg.test(str);
				}
        </script>
	</head>

	<body leftmargin="2" topmargin="9" background='<%=path %>/images/allbg.gif'>
			<form action="<%=path %>/stuAdd.action" name="formAdd" method="post">
				     <table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px">
						<tr bgcolor="#EEF4EA">
					        <td colspan="3" background="<%=path %>/images/wbg.gif" class='title'><span>&nbsp;</span></td>
					    </tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="10%" bgcolor="#FFFFFF" align="right">
						         学号：
						    </td>
						    <td width="90%" bgcolor="#FFFFFF" align="left">
						        <input type="text" name="stuXuehao" size="40"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="10%" bgcolor="#FFFFFF" align="right">
						        姓名：
						    </td>
						    <td width="90%" bgcolor="#FFFFFF" align="left">
						         <input type="text" name="stuRealname" size="40"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="10%" bgcolor="#FFFFFF" align="right">
						        性别：
						    </td>
						    <td width="90%" bgcolor="#FFFFFF" align="left">
						         <input type="radio" name="stuSex" value="男" checked="checked" style="border: 0px;"/>男
						         &nbsp;&nbsp;
						         <input type="radio" name="stuSex" value="女" style="border: 0px;"/>女
						         
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="10%" bgcolor="#FFFFFF" align="right">
						        年龄：
						    </td>
						    <td width="90%" bgcolor="#FFFFFF" align="left">
						         <input type="text" name="stuAge" size="40" value="20"
						         onkeyup="value=value.replace(/[^\d]/g,'') " 
								 onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="10%" bgcolor="#FFFFFF" align="right">
						        邮箱：
						    </td>
						    <td width="90%" bgcolor="#FFFFFF" align="left">
						         <input type="text" name="email" size="40"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="10%" bgcolor="#FFFFFF" align="right">
						      电话：
						    </td>
						    <td width="90%" bgcolor="#FFFFFF" align="left">
						         <input type="text" name="dianhua" size="40"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="10%" bgcolor="#FFFFFF" align="right">
						        密码：
						    </td>
						    <td width="90%" bgcolor="#FFFFFF" align="left">
						         <input type="password" name="loginPw" size="40" value="000000"/>(默认：000000)
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="10%" bgcolor="#FFFFFF" align="right">
						        &nbsp;
						    </td>
						    <td width="90%" bgcolor="#FFFFFF" align="left">
						       <input type="button" value="提交" onclick="check()"/>&nbsp; 
						       <input type="reset" value="重置" onclick="quxiao()"/>&nbsp;
						    </td>
						</tr>
					 </table>
			</form>
   </body>
</html>
