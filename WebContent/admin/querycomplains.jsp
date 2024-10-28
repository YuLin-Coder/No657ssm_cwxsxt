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
						<span class="mws-i-24 i-table-1">用户留言信息查询</span>
					</div>
					<div class="mws-panel-body">
						<div class="dataTables_wrapper">
							<table class="mws-datatable-fn mws-table">
								<thead>
									<tr>
										<th class="center">用户</th>
										<th class="center">内容</th>
										<th class="center">日期</th>
										<th class="center">状态</th>
										<th class="center">回复内容</th>
									</tr>
								</thead>
								<c:forEach items="${complainsList}" var="complains">
									<tr>
										<td class="center">${complains.username}</td>
										<td class="center">${complains.contents}</td>
										<td class="center">${complains.addtime}</td>
										<td class="center">${complains.status}</td>
										<td class="center">${complains.reps}</td>
									</tr>
								</c:forEach>
							</table>
							<div class="dataTables_filter">
								<form action="complains/queryComplainsByCond.action" name="myform" method="post">
									<label>查询条件: <select name="cond" style="width: 100px">
											<option value="usersid">按用户查询</option>
											<option value="contents">按内容查询</option>
											<option value="addtime">按日期查询</option>
											<option value="status">按状态查询</option>
											<option value="reps">按回复内容查询</option>
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

