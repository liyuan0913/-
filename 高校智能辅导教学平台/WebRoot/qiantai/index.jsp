<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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
	
	<link rel="stylesheet" type="text/css" href="<%=path %>/css/style.css" />
	
	<style type="text/css">
		.c1-bline{border-bottom:#999 1px dashed;border-top:1px;}
		.f-right{float:right}
		.f-left{float:left}
		.clear{clear:both}
	</style>
	
    <script type="text/javascript" src="<%=path %>/js/modernizr-1.5.min.js"></script>
    <script type="text/javascript" src="<%=path %>/js/lunbo.js"></script>
    
	<script type="text/javascript">
	    
	</script>
	
	<style type="text/css">
		
	</style>
  </head>
   
  <body>
  <div id="main">
	  <jsp:include flush="true" page="/qiantai/top.jsp"></jsp:include>

      <div id="site_content">
	      <jsp:include flush="true" page="/qiantai/right.jsp"></jsp:include>
	      <div class="content">
	          <div>
					<div style="width:754px;padding-bottom:1px;">
					      <!-- <div style="height:26px;background:url(<%=path %>/images/guangguang.PNG);font-size: 14px;color:#de3237;">
					         <span style="float:left;font-family: 微软雅黑;font-size: 14px;margin-top: 3px;margin-left: 10px;">新闻资讯</span>
							 <span style="float:right;font-family: 微软雅黑;font-size: 14px;margin-top: 3px;">&nbsp;</span>
					      </div> -->
					      <div style="border:0px solid #A9A9A9;">
					                <div id="imgADPlayer"></div>
									<script>
										PImgPlayer.addItem( "test2", "#", "<%=path %>/lunbo/10.jpg");
										PImgPlayer.addItem( "test3", "#", "<%=path %>/lunbo/12.jpg");
										<%-- <c:forEach items="${requestScope.xinwenList }" var="xinwen" varStatus="ss">
										    PImgPlayer.addItem( "${xinwen.biaoti}", "<%=path %>/xinwenDetailQian.action?id="+${xinwen.id}, "<%=path %>/${xinwen.fujian}");
										</c:forEach> --%>
										
										PImgPlayer.init( "imgADPlayer", 753, 260 );
									</script>
					     </div>
					 </div>
					 <br/>
					 <div style="width:754px;margin-top: 1px;padding-bottom:5px;">
					      <div style="height:26px;background:url(<%=path %>/images/guangguang.PNG);font-size: 14px;color:#de3237;">
					         <span style="float:left;font-family: 微软雅黑;font-size: 14px;margin-top: 3px;margin-left: 10px;">最新公告</span>
							 <span style="float:right;font-family: 微软雅黑;font-size: 14px;margin-top: 3px;">&nbsp;</span>
					      </div>
					      <div style="border:1px solid #A9A9A9">
							   <c:forEach items="${sessionScope.gonggaoList}" var="gonggao">
								   <div class="c1-bline" style="padding:7px 0px;">
								       <div class="f-left" style="margin-left: 10px;margin-top: 11px;">
									         <img src="<%=path %>/img/head-mark4.gif" align="middle" class="img-vm" border="0"/> 
								             <a style="" href="<%=path %>/gonggaoDetailQian.action?gonggaoId=${gonggao.gonggaoId}">${gonggao.gonggaoTitle}</a>
								       </div>
								      <div class="f-right" style="margin-right: 10px;">${gonggao.gonggaoData}</div>
								      <div class="clear"></div>
								  </div>
								</c:forEach>
							   <br/><br/> 
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
