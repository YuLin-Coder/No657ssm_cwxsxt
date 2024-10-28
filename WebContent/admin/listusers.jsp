<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="check_logstate.jsp"></jsp:include>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!doctype html>
<html lang="zh_CN">
<head>
<base href="<%=basePath%>" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>欢迎使用后台管理系统</title>
<link rel="stylesheet" type="text/css" href="css/reset.css" media="screen" />
<link rel="stylesheet" type="text/css" href="css/text.css" media="screen" />
<link rel="stylesheet" type="text/css" href="css/fonts/ptsans/stylesheet.css" media="screen" />
<link rel="stylesheet" type="text/css" href="css/fluid.css" media="screen" />
<link rel="stylesheet" type="text/css" href="css/mws.style.css" media="screen" />
<link rel="stylesheet" type="text/css" href="css/icons/icons.css" media="screen" />
<link rel="stylesheet" type="text/css" href="css/demo.css" media="screen" />
<link rel="stylesheet" type="text/css" href="css/jui/jquery.ui.css" media="screen" />
<link rel="stylesheet" type="text/css" href="css/mws.theme.css" media="screen" />
<script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.js"></script>
<script type="text/javascript" src="js/mws.js"></script>
<script type="text/javascript" src="js/demo.js"></script>
<script type="text/javascript" src="js/themer.js"></script>
</head>
<body>
	<jsp:include page="top.jsp"></jsp:include>
	<div id="mws-wrapper">
		<jsp:include page="menu.jsp"></jsp:include>
		<div id="mws-container" class="clearfix">
			<div class="container">
				<div class="mws-panel grid_8">
					<div class="mws-panel-header">
						<span class="mws-i-24 i-table-1">网站用户信息列表</span>
					</div>
					<div class="mws-panel-body">
						<div class="dataTables_wrapper">
							<table class="mws-datatable-fn mws-table">

								<thead>
									<tr>
										<th class="center">用户名</th>
										<th class="center">姓名</th>
										<th class="center">性别</th>
										<th class="center">出生日期</th>
										<th class="center">联系方式</th>
										<th class="center">注册日期</th>
										<th>操作</th>
									</tr>
								</thead>
								<c:forEach items="${usersList}" var="users">
									<tr>
										<td class="center">${users.username}</td>
										<td class="center">${users.realname}</td>
										<td class="center">${users.sex}</td>
										<td class="center">${users.birthday}</td>
										<td class="center">${users.contact}</td>
										<td class="center">${users.regdate}</td>
										<td><a href="users/deleteUsers.action?id=${users.usersid}"
											onclick="{if(confirm('确定要删除吗?')){return true;}return false;}" style="color: #c5d52b;">删除</a></td>
									</tr>
								</c:forEach>
							</table>
							<div class="dataTables_info">${msg }</div>
							<div class="dataTables_paginate paging_full_numbers">${html }</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>

