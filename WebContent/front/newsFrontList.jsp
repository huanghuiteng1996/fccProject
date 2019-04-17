
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="mingrisoft.*"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">

<title>新闻--明日科技有限公司</title>

<link type="text/css" href="css/style.css" rel="stylesheet">

<script type=" text/JavaScript" src="js/fwslider.js"></script>
</head>

<body>
	<div class="bgStyle">
		<div class="header">

			<div class="logo">
				<img src="img/logo.png">
			</div>
			<div class="pull-icon">
				<a id="pull"></a>
			</div>

			<div class="cssmenu">
				<ul>
					<li><a href="index.html">首页</a></li>
					<li><a href="about.html">企业简介</a></li>
					<li><a href="noticeFrontList.jsp">公告</a></li>
					<li><a href="newsFrontList.jsp">新闻</a></li>
					<li><a href="product.html">产品介绍</a></li>
					<li class="last"><a href="contact.html">联系我们</a></li>
				</ul>
			</div>

			<div class="clear"></div>
		</div>
	</div>

	<div class="second_banner">
		<img src="img/news.jpg">
	</div>
	<div class="container">
		<div class="left">
			<div class="menu_plan">
				<div class="menu_title">
					公司动态<br> <span>news of company</span>
				</div>
				<ul id="tab">
					<li><a href="#">公司新闻</a></li>
				</ul>
			</div>
		</div>
		<div class="right">
			<div class="location">
				<span>当前位置：<a href="JavaScript:void(0)" id="a"><a
						href="#">公司新闻</a></a></span>
				<div class="brief" id="b">
					<a href="#">公司新闻</a>
				</div>
			</div>
			<div style="font-size: 14px; margin-top: 53px; line-height: 36px;">
				<div id="tab_con">
					<div id="tab_con_2" class="dis-n" style="display: none;">
						<table style="margin-top: 70px; width: 100%">
							<tbody>
								<tr class="tt_bg" style="text-align: center">
									<td>新闻标题</td>
									<td>发布人</td>
									<td>发布时间</td>
									<td>详情</td>
								</tr>
								<%
									request.setCharacterEncoding("utf-8");
									News news = new News();
									String pageNum = request.getParameter("intPage");

									String toPage = request.getContextPath() + request.getServletPath() + "?";
									String sOK = news.ListNewsFront(toPage, pageNum);
									if (sOK.equals("No")) {
										out.println("数据服务器出现错误！");
									} else {
										out.println(sOK);
									}
								%>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="bottom">
		<div class="footer">
			<div class="address">
				Copyright 2016 明日科技有限公司
				<script
					src="http://s139.cnzz.com/stat.php?id=844254&amp;web_id=844254&amp;show=pic2"
					language="JavaScript" charset="gb2312"></script>
				<br> 吉ICP备10002740号-2 &nbsp;&nbsp;吉公网安备 22010202000132号 <br>
				<a href="http://www.mingrisoft.com">吉林省明日科技有限公司</a> 技术支持 <a
					href="../admin/login.jsp">后台</a>
			</div>
		</div>
	</div>
</body>
</html>
