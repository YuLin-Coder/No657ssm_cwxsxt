<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<div id="mws-sidebar-stitch"></div>
<div id="mws-sidebar-bg"></div>
<div id="mws-sidebar">
	<div id="mws-navigation">
		<ul>


			<li><a href="#" class="mws-i-24 i-list">管理员信息</a>
				<ul>
					<li><a href="admin/createAdmin.action">新增管理员信息</a></li>
					<li><a href="admin/getAllAdmin.action">管理员信息列表</a></li>
					<li><a href="admin/queryAdminByCond.action">管理员信息查询</a></li>
				</ul></li>


			<li><a href="#" class="mws-i-24 i-list">网站用户信息</a>
				<ul>
					<li><a href="users/getAllUsers.action">网站用户信息列表</a></li>
					<li><a href="users/queryUsersByCond.action">网站用户信息查询</a></li>
				</ul></li>


			<li><a href="#" class="mws-i-24 i-list">新闻公告信息</a>
				<ul>
					<li><a href="article/createArticle.action">新增新闻公告信息</a></li>
					<li><a href="article/getAllArticle.action">新闻公告信息列表</a></li>
					<li><a href="article/queryArticleByCond.action">新闻公告信息查询</a></li>
				</ul></li>


			<li><a href="#" class="mws-i-24 i-list">商品类型信息</a>
				<ul>
					<li><a href="cate/createCate.action">新增商品类型信息</a></li>
					<li><a href="cate/getAllCate.action">商品类型信息列表</a></li>
					<li><a href="cate/queryCateByCond.action">商品类型信息查询</a></li>
				</ul></li>


			<li><a href="#" class="mws-i-24 i-list">商品信息</a>
				<ul>
					<li><a href="goods/createGoods.action">新增商品信息</a></li>
					<li><a href="goods/getAllGoods.action">商品信息列表</a></li>
					<li><a href="goods/queryGoodsByCond.action">商品信息查询</a></li>
				</ul></li>

			<li><a href="#" class="mws-i-24 i-list">订单信息</a>
				<ul>
					<li><a href="orders/getAllOrders.action">订单信息列表</a></li>
					<li><a href="orders/queryOrdersByCond.action">订单信息查询</a></li>
				</ul></li>


			<li><a href="#" class="mws-i-24 i-list">订单明细信息</a>
				<ul>
					<li><a href="items/getAllItems.action">订单明细信息列表</a></li>
					<li><a href="items/queryItemsByCond.action">订单明细信息查询</a></li>
				</ul></li>


			<li><a href="#" class="mws-i-24 i-list">用户留言信息</a>
				<ul>
					<li><a href="complains/getAllComplains.action">用户留言信息列表</a></li>
					<li><a href="complains/queryComplainsByCond.action">用户留言信息查询</a></li>
				</ul></li>

		</ul>
	</div>
</div>
