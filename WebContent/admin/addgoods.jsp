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
<script type="text/javascript" src="js/goods.js" charset="utf-8"></script>
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
						<span class="mws-i-24 i-pencil">新增商品信息</span>
					</div>
					<div class="mws-panel-body">
						<form class="mws-form" name="myform" action="goods/addGoods.action" method="post" onsubmit="return check();">
							<div class="mws-form-inline">

								<div class="mws-form-row">
									<label>商品名称</label>
									<div class="mws-form-item large">
										<input type="text" name="goodsname" class="mws-textinput" id="goodsname" placeholder="请输入商品名称" />
									</div>
								</div>
								<div class="mws-form-row">
									<label>图片</label>
									<div class="mws-form-item large">
										<script type="text/javascript" src="js/selimage.js"></script>
										<input class="mws-textinput" type="text" name="image" id="image" onclick="selimage();" placeholder="请选择图片"
											readonly="readonly" />
									</div>
								</div>
								<div class="mws-form-row">
									<label>商品类型</label>
									<div class="mws-form-item large">
										<select name="cateid" class="mws-textinput" id="cateid"><c:forEach items="${cateList}" var="cate">
												<option value="${cate.cateid}">${cate.catename }</option>
											</c:forEach></select>
									</div>
								</div>
								<div class="mws-form-row">
									<label>价格</label>
									<div class="mws-form-item large">
										<input type="text" name="price" class="mws-textinput" id="price" placeholder="请输入价格" />
									</div>
								</div>
								<div class="mws-form-row">
									<label>是否特价</label>
									<div class="mws-form-item large">
										<select class="mws-textinput" name="special" id="special"><option value="是">是</option>
											<option value="否">否</option></select>
									</div>
								</div>
								<div class="mws-form-row">
									<label>是否推荐</label>
									<div class="mws-form-item large">
										<select class="mws-textinput" name="recommend" id="recommend"><option value="是">是</option>
											<option value="否">否</option></select>
									</div>
								</div>
								<div class="mws-form-row">
									<label>库存数</label>
									<div class="mws-form-item large">
										<input type="text" name="storage" class="mws-textinput" id="storage" placeholder="请输入库存数" />
									</div>
								</div>
								<div class="mws-form-row">
									<label>商品介绍</label>
									<div class="mws-form-item large">
										<script type="text/javascript" src="ckeditor/ckeditor.js"></script>
										<textarea cols="80" name="contents" id="contents" rows="10" placeholder="请输入商品介绍"> </textarea>
										<script type="text/javascript">
											CKEDITOR.replace('contents', {
												language : 'zh-cn'
											});
										</script>
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




