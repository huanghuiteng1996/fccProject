<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ page import="mingrisoft.*"%>
<%
		News News1 = new News();							
		String NewsID = request.getParameter("NewsID");    				
		if (News1.DelNews(NewsID))							
			out.print("<script>alert('删除新闻成功!');location.href='news.jsp';</script>");
		else {
			out.print("<script>alert('删除新闻失败!');location.href='news.jsp';</script>");
		}
%>
