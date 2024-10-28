<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%><%@ taglib prefix="c"
	uri="http://java.sun.com/jsp/jstl/core"%><jsp:include page="check_logstate.jsp"></jsp:include>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%><!doctype html>
<html lang="zh_CN">
<head>
<base href="<%=basePath%>" />
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
						<span class="mws-i-24 i-table-1">网站用户信息查询</span>
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
									</tr>
								</c:forEach>
							</table>
							<div class="dataTables_filter">
								<form action="users/queryUsersByCond.action" name="myform" method="post">
									<label>查询条件: <select name="cond" style="width: 100px">
											<option value="username">按用户名查询</option>
											<option value="password">按密码查询</option>
											<option value="realname">按姓名查询</option>
											<option value="sex">按性别查询</option>
											<option value="birthday">按出生日期查询</option>
											<option value="contact">按联系方式查询</option>
											<option value="regdate">按注册日期查询</option>
									</select>
									</label>&nbsp;&nbsp;&nbsp; <label>关键字: <input type="text" name="name" required style="width: 100px" /></label>&nbsp;&nbsp;&nbsp;
									<label><input type="submit" value="查询" class="mws-button green" /> </label>${html }
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	</div>
</body>
</html>

