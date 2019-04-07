<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ page import="mingrisoft.*"%>

<%
	request.setCharacterEncoding("utf-8");
	News news1 = new News();
	String Action = request.getParameter("Action");

	if (Action != null && Action.equals("Add")) {
		String[] s = new String[2];
		s[0] = request.getParameter("NewsTitle");
		s[1] = request.getParameter("NewsContent");
		String result = news1.AddNews(s);
		if (result.equals("Yes")) {
			out.print("<script>alert('添加新闻成功!');location.href='news.jsp';</script>");
			return;
		} else {
			out.print("<script>alert('添加新闻失败!');location.href='news.jsp';</script>");
			return;
		}
	}
%>
