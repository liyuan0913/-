<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
   String path = request.getContextPath();
%>

<html>
<head>
     <link rel="stylesheet" type="text/css" href="<%=path %>/css/style.css" />
     <script type="text/javascript" src="<%=path %>/js/modernizr-1.5.min.js"></script>
</head>
  
<body>
  <!-- <header style="background: #444 url(/zhiyuan/images/logo.jpg) repeat-x;"> -->
  <header style="background: #444 url()  repeat-x;height: 150px;">
      <div id="logo" style="height: 10px;">
        <div id="logo_text" style="width: 600px;">
          <h1 style="margin-top: 45px;margin-left: 50px;color: white;font-size: 26px;">高校智能辅导教学平台</h1>
        </div>
      </div>
      <div id="menu_container" style="margin-top: 85px;">
          <ul class="sf-menu" id="nav" style="margin-top: 0px;">
	          <li><a href="<%=path %>/qiantai/default.jsp" style="font-family: 微软雅黑;font-size: 16px;">系统首页</a></li>
	          <li><a href="<%=path %>/docAll.action" style="font-family: 微软雅黑;font-size: 16px;">教学课程</a></li>
	          <li><a href="<%=path %>/shipinAll.action" style="font-family: 微软雅黑;font-size: 16px;">教学视频</a></li>
	          <li><a href="<%=path %>/gonggaoAll.action" style="font-family: 微软雅黑;font-size: 16px;">系统公告</a></li>
	          <li><a href="<%=path %>/liuyanAll.action" style="font-family: 微软雅黑;font-size: 16px;">问题答疑</a></li>
	          <li><a href="<%=path %>/zhutiAll.action" style="font-family: 微软雅黑;font-size: 16px;">学习交流</a></li>
	          <%-- <li><a href="<%=path %>/qiantai/userreg/userreg.jsp" style="font-family: 微软雅黑;font-size: 16px;">1111</a></li>
	              <ul>
	                <li><a href="#">222</a></li>
	                <li><a href="#">333</a></li>
	              </ul>
		      </li> --%>
	      </ul>
      </div>
</header>
</body>
</html>
