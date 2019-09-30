<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml">
  <head>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	
	<script type="text/javascript">
         function huifuAdd(zhutiId)
	     {
	           <c:if test="${sessionScope.userType !=2}">
		           alert("请先登录");
		       </c:if> 
		       <c:if test="${sessionScope.userType ==2}">
		           var url="<%=path %>/qiantai/huifu/huifuAdd.jsp?zhutiId="+zhutiId;
		           var ret = window.showModalDialog(url,"","dialogWidth:800px; dialogHeight:400px; dialogLeft: status:no; directories:yes;scrollbars:yes;Resizable=no;");
	               window.location.reload();
	           </c:if> 
	     }
	     
	     
		 function down1(fujianPath,fujianYuashiMing)
	     {
	        <c:if test="${sessionScope.userType !=2}">
	           alert("请先登录");
	        </c:if>
	     
	        <c:if test="${sessionScope.userType ==2}">
	           var url="<%=path %>/updown/updown.jsp?fujianPath="+fujianPath+"&fujianYuashiMing="+fujianYuashiMing;
	           url=encodeURI(url); 
	           url=encodeURI(url); 
	           window.open(url,"_self");
	        </c:if>
	     } 
	</script>
	
	<style type="text/css">
		.c1-bline{border-bottom:#999 1px dashed;border-top:1px;}
		.f-right{float:right}
		.f-left{float:left}
		.clear{clear:both}
	</style>
  </head>
   
  <body>
  <div id="main">
      <jsp:include flush="true" page="/qiantai/top.jsp"></jsp:include>
      
      
      
      
      <div id="site_content">
	      <jsp:include flush="true" page="/qiantai/right.jsp"></jsp:include>
	      <div class="content">
	          <!-- <h1 style="font-size: 22px;">新闻喜讯</h1>
	          <p>
		           This simple, fixed width website template is released under a Creative Commons Attribution 3.0 Licence
		           This means you are free to download and use it for personal and commercial proj
	          </p>
	          <p>1111</p>
	          <p>2222</p> -->
	          <!-- <h1 style="font-size: 22px;">
	                                        会员注册
	          </h1> -->
	          <div>
					 <div style="width:760px;margin-top: 1px;padding-bottom:5px;">
					      <!-- <div style="height:26px;background:url(/cwyxt/images/guangguang.PNG);font-size: 14px;color:#de3237;">
					         <span style="float:left;font-family: 微软雅黑;font-size: 14px;margin-top: 3px;margin-left: 10px;">宠物信息</span>
							 <span style="float:right;font-family: 微软雅黑;font-size: 14px;margin-top: 3px;">&nbsp;</span>
					      </div> -->
					      <div style="border:1px solid #CCCCCC">
								<div class="c1-bline" style="padding:7px 0px;">
			                        <div class="f-left" style="margin-left: 16px;">
			                             <%-- <img src="<%=path %>/img/head-mark4.gif" align="middle" border="0"/>  --%>
			                             ${requestScope.zhuti.title }
			                        </div>
			                        <div class="f-right" style="margin-right: 10px;">${requestScope.zhuti.shijian }</div>
			                        <div class="clear" style="margin-top: 20px;margin-left: 15px;">
			                           <c:out value="${requestScope.zhuti.content }" escapeXml="false"></c:out>
			                        </div>
			                        <div class="clear" style="margin-top: 15px;margin-left: 15px;">
			                           <c:if test="${requestScope.zhuti.fujian!='' }">
					                                                                        附件：${requestScope.zhuti.fujian}
					                        <a href="#" onClick="down1('${requestScope.zhuti.fujian}','${requestScope.zhuti.fujian}')" style="font-size: 13px;color: red">下载</a>
					                        &nbsp;&nbsp;
					                   </c:if>
					                   ${requestScope.zhuti.stu.stuRealname }[${requestScope.zhuti.stu.stuXuehao }]
			                        </div>
		                        </div>
		                        <br/>
		                        <!-- 主题信息 -->
		                        <!-- 回复信息 -->
		                        <c:forEach items="${requestScope.huifuList}" var="huifu" varStatus="ss">
		                              <div class="c1-bline" style="padding:7px 0px;">
				                        <div class="f-left" style="margin-top: 5px;margin-left: 5px;">
				                             <img src="<%=path %>/img/dian.jpg"/>
				                             <c:out value="${huifu.content }" escapeXml="false"></c:out>
				                        </div>
				                        <div class="f-right" style="margin-right: 10px;">${huifu.shijian }</div>
				                        <div class="clear" style="margin-top: 5px;margin-left: 5px;">
						                   &nbsp;&nbsp;&nbsp;${huifu.stu.stuRealname }[${huifu.stu.stuXuehao }]
				                        </div>
		                              </div>
		                        </c:forEach>
		                        <!-- 回复信息 -->
		                        <br/>
		                        <center><a href="#" onclick="huifuAdd(${requestScope.zhuti.id })" style="color: black">我要回复</a></center> 
					      </div>
					 </div>
	          </div>
	      </div>
      </div>
      
      
      
      
      
      <footer>
          <a href="<%=path %>/login.jsp">系统后台</a>
      </footer>
  </div>
</body>
</html>
