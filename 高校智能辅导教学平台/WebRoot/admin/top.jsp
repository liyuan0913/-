<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>

<HTML>
	<HEAD>
		<META http-equiv=Content-Type content="text/html; charset=utf-8">
		<style type="text/css">
	        .Header {background: url(<%=path %>/images/topleft.jpg) repeat}
        </style>
        
        <script type="text/javascript">
		    function logout()
			{
			   if(confirm("确定要退出本系统吗??"))
			   {
				   window.parent.location="<%=path %>/login.jsp";
			   }
			}
	    </script>
	</HEAD>

	<BODY text=#000000 bgColor=#ffffff leftMargin=0 rightmargin="0" topMargin=0 marginheight="0" marginwidth="0">
		<div class="Header" style="height: 140px;">
            <div class="list_bar">
				 <span style="float:left;font-size: 33px;color: white;font-weight: bolder;display: block;text-align: left;margin-top: 38px;margin-left: 30px;">
				 	高校智能辅导教学平台
				 </span>
				 <span style="float:right;font-size: 16px;color: white;font-weight: bolder;display: block;text-align: left;margin-top: 50px;margin-right: 200px;">			    
				     <c:if test="${sessionScope.userType==0 }">
				                        欢迎你：系统管理员
				        <a href="#" onclick="logout()" style="color: white;font-size: 12px;font-family: 微软雅黑">退出系统</a>
				     </c:if>
				     <c:if test="${sessionScope.userType==1 }">
				                        欢迎你：${sessionScope.tea.teaRealname }
				        <a href="#" onclick="logout()" style="color: white;font-size: 12px;font-family: 微软雅黑">退出系统</a>
				     </c:if>
				     <c:if test="${sessionScope.userType==2 }">
				                        欢迎你：${sessionScope.stu.stuRealname }
				     </c:if>
				     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				     <SCRIPT>setInterval("clock.innerHTML=new Date().toLocaleString()+'&nbsp;&nbsp;'+''.charAt(new Date().getDay());",1000)</SCRIPT><SPAN id=clock></SPAN>
                     &nbsp;&nbsp;&nbsp;
                 </span>
			</div>
		</div>
		
</HTML>
