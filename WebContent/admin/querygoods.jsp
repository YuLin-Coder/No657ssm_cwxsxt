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
						<span class="mws-i-24 i-table-1">商品信息查询</span>
					</div>
					<div class="mws-panel-body">
						<div class="dataTables_wrapper">
							<table class="mws-datatable-fn mws-table">
								<thead>
									<tr>
										<th class="center">商品名称</th>
										<th class="center">商品类型</th>
										<th class="center">价格</th>
										<th class="center">是否特价</th>
										<th class="center">是否推荐</th>
										<th class="center">库存数</th>
										<th class="center">上架日期</th>
										<th class="center">销量</th>
										<th class="center">点击数</th>
									</tr>
								</thead>
								<c:forEach items="${goodsList}" var="goods">
									<tr>
										<td class="center">${goods.goodsname}</td>
										<td class="center">${goods.catename}</td>
										<td class="center">${goods.price}</td>
										<td class="center">${goods.special}</td>
										<td class="center">${goods.recommend}</td>
										<td class="center">${goods.storage}</td>
										<td class="center">${goods.addtime}</td>
										<td class="center">${goods.sellnum}</td>
										<td class="center">${goods.hits}</td>
									</tr>
								</c:forEach>
							</table>
							<div class="dataTables_filter">
								<form action="goods/queryGoodsByCond.action" name="myform" method="post">
									<label>查询条件: <select name="cond" style="width: 100px">
											<option value="goodsname">按商品名称查询</option>
											<option value="image">按图片查询</option>
											<option value="cateid">按商品类型查询</option>
											<option value="price">按价格查询</option>
											<option value="special">按是否特价查询</option>
											<option value="recommend">按是否推荐查询</option>
											<option value="storage">按库存数查询</option>
											<option value="addtime">按上架日期查询</option>
											<option value="sellnum">按销量查询</option>
											<option value="hits">按点击数查询</option>
											<option value="contents">按商品介绍查询</option>
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

