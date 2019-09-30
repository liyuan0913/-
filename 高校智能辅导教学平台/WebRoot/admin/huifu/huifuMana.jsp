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
		<style rel="stylesheet" type="text/css">
			.c1-bline{border-bottom:#999 1px dashed;border-top:1px;}
			.f-right{float:right}
			.f-left{float:left}
			.clear{clear:both}
			
			.list_noimg
			{
			      PADDING-RIGHT: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 1px; OVERFLOW: hidden; PADDING-TOP: 1px; BORDER-BOTTOM: #eee 1px solid; ZOOM: 1
			}
		</style>
		
        <script language="javascript">
           function down1(fujianPath,fujianYuashiMing)
	       {
	           var url="<%=path %>/updown/updown.jsp?fujianPath="+fujianPath+"&fujianYuashiMing="+fujianYuashiMing;
	           url=encodeURI(url); 
	           url=encodeURI(url); 
	           window.open(url,"_self");
	       } 
	       
	        function huifuDel(id)
		    {
		        var url="<%=path %>/huifuDel.action?id="+id;
		        window.location.href=url;
		    }
	    
		    function zhutiDel(id)
		    {
		        var url="<%=path %>/zhutiDel.action?id="+id;
		        window.location.href=url;
		    }
        </script>
	</head>

	<body leftmargin="12" topmargin="12" background='<%=path %>/images/allbg.gif'>
		                <DIV style="border:1px solid  #CCCCCC; padding:9px;width: 1120px;">
		                <!-- 主题信息 -->
                        <div class="c1-bline" style="padding:7px 0px;">
	                        <div class="f-left" style="margin-left: 15px;">
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
			                        &nbsp;&nbsp;&nbsp;
			                   </c:if>
			                   ${requestScope.zhuti.stu.stuRealname }[${requestScope.zhuti.stu.stuXuehao }]
			                   &nbsp;&nbsp;&nbsp;
			                   <A href="#" style="color: red" onclick="zhutiDel(${zhuti.id})">删除</A>&nbsp;&nbsp;&nbsp;
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
				                   &nbsp;&nbsp;&nbsp;
				                   ${huifu.stu.stuRealname }[${huifu.stu.stuXuehao }]
				                   &nbsp;&nbsp;&nbsp;
				                   <a href="#" onclick="huifuDel(${huifu.id })" style="color: red">删除</a>
		                        </div>
                              </div>
                        </c:forEach>
                        <!-- 回复信息 -->
                        </DIV>
	</body>
</html>
