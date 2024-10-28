<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<div id="mws-header" class="clearfix">
	<div id="mws-logo-container">
		<div id="mws-logo-wrap" style="width: 450px;">
			<span style="color: #FFF; font-size: 30px; height: 60px">宠物销售网站</span>
		</div>
	</div>

	<div id="mws-user-tools" class="clearfix">
		<div id="mws-user-info" class="mws-inset">
			<div id="mws-user-functions">
				<div id="mws-username">欢迎你，${sessionScope.adminname }</div>
				<ul>
					<li><a href="admin/editpwd.jsp">修改密码</a></li>
					<li><a href="<%=basePath%>admin/exit.action" target="_top">退出</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>
