<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="check_logstate.jsp"></jsp:include>
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
<script type="text/javascript" src="js/article.js" charset="utf-8"></script>
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
						<span class="mws-i-24 i-pencil">编辑新闻公告信息</span>
					</div>
					<div class="mws-panel-body">
						<form class="mws-form" name="myform" action="article/updateArticle.action" method="post"
							onsubmit="return check();">
							<div class="mws-form-inline">

								<div class="mws-form-row">
									<label>标题</label>
									<div class="mws-form-item large">
										<input type="text" name="title" class="mws-textinput" id="title" value="${article.title}" />
									</div>
								</div>
								<div class="mws-form-row">
									<label>图片</label>
									<div class="mws-form-item large">
										<script type="text/javascript" src="js/selimage.js"></script>
										<input class="mws-textinput" type="text" name="article.image" value="${article.image}" id="image"
											onclick="selimage();" readonly="readonly" />
									</div>
								</div>
								<div class="mws-form-row">
									<label>内容</label>
									<div class="mws-form-item large">
										<script type="text/javascript" src="ckeditor/ckeditor.js"></script>
										<textarea cols="80" name="contents" id="contents" rows="10">${article.contents} </textarea>
										<script type="text/javascript">
											CKEDITOR.replace('contents', {
												language : 'zh-cn'
											});
										</script>
									</div>
								</div>
							</div>
							<div class="mws-button-row">
								<input type="hidden" name="articleid" id="articleid" value="${article.articleid}" /><input type="hidden"
									name="addtime" id="addtime" value="${article.addtime}" /> <input type="hidden" name="hits" id="hits"
									value="${article.hits}" /> <input type="submit" id="sub" class="mws-button red" value="提交" />
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>




