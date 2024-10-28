<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!doctype html>
<html lang="zh_CN">
<head>
<base href="<%=basePath%>" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>欢迎使用后台管理系统</title>
<!-- Required Stylesheets -->
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
<script type="text/javascript">
	function checkLogin() {
		var username = document.myform.username.value;
		var password = document.myform.password.value;
		if (username == '') {
			alert('请输入用户名');
			document.myform.username.focus();
			return false;
		}
		if (password == '') {
			alert('请输入密码');
			document.myform.password.focus();
			return false;
		}
	}
</script>
</head>
<body>
	<div id="mws-login">
		<h1 style="text-align: center;
    font-size: 20px;">宠物销售网站</h1>
		<div class="mws-login-lock">
			<img src="css/icons/24/locked-2.png" alt="" />
		</div>
		<div id="mws-login-form">
			<form class="mws-form" action="admin/login.action" name="myform" method="post" onsubmit="return checkLogin()">
				<div class="mws-form-row">
					<div class="mws-form-item large">
						<input type="text" class="mws-login-username mws-textinput" placeholder="请输入用户名" name="username" id="username" />
					</div>
				</div>
				<div class="mws-form-row">
					<div class="mws-form-item large">
						<input type="password" class="mws-login-password mws-textinput" placeholder="请输入密码" name="password" id="password" />
					</div>
				</div>
				<div class="mws-form-row">
					<input type="submit" value="确认登录" class="mws-button green mws-login-button" />
				</div>
			</form>
		</div>
	</div>

</body>
</html>