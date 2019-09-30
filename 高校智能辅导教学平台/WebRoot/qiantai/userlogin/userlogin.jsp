<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
    <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
    <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
	
	<script type="text/javascript">
	        function login()
	        {
	           if(document.userLogin.stuXuehao.value=="")
	           {
	               alert("请输入学号");
	               return;
	           }
	           if(document.userLogin.loginPw.value=="")
	           {
	               alert("请输入密码");
	               return;
	           }
	           
	           document.getElementById("indicator").style.display="block";
			   loginService.login(document.userLogin.stuXuehao.value,document.userLogin.loginPw.value,2,callback);
	        }
	        
	        
	        
	        function callback(data)
			{
			    document.getElementById("indicator").style.display="none";
			    if(data=="no")
			    {
			        alert("学号或密码错误");
			    }
			    if(data=="yes")
			    {
			        alert("通过验证,系统登录成功");
			        window.location.reload();
			    }
			    
			}
			
			function userLogout()
	        {
			    loginService.logout(callback1);
	        }
	        
	        
	        function callback1(data)
			{
			    alert("退出系统");
			    window.location.reload();
			}
			
			function gerenzhongxin()
			{
			    var targetWinUrl="<%=path %>/admin/index.jsp";
				var targetWinName="newWin";
				var features="width="+screen.width+" ,height="+screen.height+" ,toolbar=yes, top=0, left=0, menubar=yes, scrollbars=yes, resizable=yes,location=no, status=yes";
				var new_win=window.open(targetWinUrl,targetWinName,features);
			}
			
			
	        function reg()
	        {
	             var url="<%=path %>/qiantai/userreg/userreg.jsp";
	             window.location.href=url;
	        }
	</script>
  </head>
  
  <body>
       <c:if test="${sessionScope.userType !=2 }">
			<form action="<%=path %>/userLogin.action" name="userLogin" method="post">
			      <table cellspacing="0" cellpadding="0" width="98%" align="center" border="0">
			          <tr>
			            <td align="center" colspan="2" height="10"></td>
			          </tr>
			          <tr>
			            <td align="right" width="31%" height="30" style="font-size: 11px;">学号：</td>
			            <td align="left" width="69%"><input style="width: 100px;" name="stuXuehao" type="text" /></td>
			          </tr>
			          <tr>
			            <td align="right" height="30" style="font-size: 11px;">密码：</td>
			            <td align="left"><input type="password" style="width: 100px;" name="loginPw"/></td>
			          </tr>
			          <tr>
			            <td align="center" colspan="2" height="30">
			               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			               <input type="button" value="登录" onclick="login()" style="border:#ccc 1px solid; width: 50px;" />
						   <input type="button" value="注册" onclick="reg()" style="border:#ccc 1px solid; width: 50px;" />
			               <img id="indicator" src="<%=path %>/img/loading.gif" style="display:none"/>
			            </td>
			          </tr>
			      </table>
		    </form>
		    </c:if>
		    
		    <c:if test="${sessionScope.userType==2 }">
		        <br/>
			             欢迎您：${sessionScope.stu.stuRealname } &nbsp;&nbsp;
			    <a href="#" onclick="userLogout()">安全退出</a> &nbsp;&nbsp;
			    <A href="#" onclick="gerenzhongxin()">管理中心</A> 
			    <br/><br/>
			</c:if>
  </body>
</html>
