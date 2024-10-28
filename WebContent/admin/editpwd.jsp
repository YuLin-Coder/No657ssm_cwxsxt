<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<script type="text/javascript" src="js/pwd.js" charset="utf-8"></script>
<script type="text/javascript" src="js/selimage.js" charset="utf-8"></script>
<script type="text/javascript" src="<%=basePath%>My97DatePicker/WdatePicker.js" charset="utf-8"></script>
</head>
<body>
	<jsp:include page="top.jsp"></jsp:include>
	<div id="mws-wrapper">
		<jsp:include page="menu.jsp"></jsp:include>
		<div id="mws-container" class="clearfix">
			<div class="container">
				<div class="mws-panel grid_8">
					<div class="mws-panel-header">
						<span class="mws-i-24 i-pencil">修改密码</span>
					</div>
					<div class="mws-panel-body">
						<form class="mws-form" name="myform" action="admin/editpwd.action" method="post" onsubmit="return check();">
							<div class="mws-form-inline">

								<div class="mws-form-row">
									<label>用户名</label>
									<div class="mws-form-item large">
										<%=session.getAttribute("adminname")%>
										<input type="hidden" name="username" style="width: 160px" id="username"
											value="<%=session.getAttribute("adminname")%>" />
									</div>
								</div>
								<div class="mws-form-row">
									<label>密码</label>
									<div class="mws-form-item large">
										<input type="password" name="password" class="mws-textinput" id="password" placeholder="请输入密码" />
									</div>
								</div>
								<div class="mws-form-row">
									<label>新密码</label>
									<div class="mws-form-item large">
										<input type="password" name="newpassword" class="mws-textinput" id="newpassword" placeholder="请输入新密码" />
									</div>
								</div>
								<div class="mws-form-row">
									<label>确认密码</label>
									<div class="mws-form-item large">
										<input type="password" name="repassword" class="mws-textinput" id="repassword" placeholder="请输入确认密码" />
									</div>
								</div>
							</div>
							<div class="mws-button-row">
								<input type="submit" id="sub" class="mws-button red" value="提交" />
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>




