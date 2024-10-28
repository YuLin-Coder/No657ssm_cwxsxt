<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	function selok() {
		opener.document.getElementById("image").value = myform.p.value;
		window.close();
	}
</script>
</head>
<body>
	<div class="container">
		<div class="mws-panel grid_12">
			<div class="mws-panel-header">
				<span class="mws-i-24 i-pencil">上传图片</span>
			</div>
			<div class="mws-panel-body">
				<form action="upload/image.action" name="myform" class="mws-form" method="post" enctype="multipart/form-data">
					<div class="mws-form-inline">
						<div class="mws-form-row">
							<label>请选择图片</label>
							<div class="mws-form-item large">
								<input type="file" name="image" class="mws-textinput" id="image" />
							</div>
						</div>
					</div>
					<div class="mws-button-row">
						<c:if test="${imageFileName ne null }">
						${imageFileName } <input type="hidden" name="p" value="upfiles/${imageFileName }" id="p">
							<input type="button" class="mws-button green" value=" 确定 " onclick="selok();" />
						</c:if>
						<c:if test="${imageFileName eq null }">
							<input type="submit" class="mws-button red" value="上传图片" />
						</c:if>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>




