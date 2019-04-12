<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="mingrisoft.*"%>
<%
	request.setCharacterEncoding("utf-8");
	String Action = request.getParameter("Action");
	if (Action != null && Action.equals("Login")) {
		String User = request.getParameter("User");
		String Pwd = request.getParameter("Pwd");
		out.println("<script>alert('" + User + "');</script>");
		out.println("<script>alert('" + Pwd + "');</script>");
		Login login = new Login();                     			
		boolean isOK=login.LoginCheck(User,Pwd);       	 			
		if(isOK){		
		out.println("<SCRIPT LANGUAGE='JavaScript'>alert('登录成功！');location.href='news.jsp';</SCRIPT>");
		}else{
		out.println("<SCRIPT LANGUAGE='JavaScript'>alert('登录失败！');location.href='news.jsp';</SCRIPT>");
			}
		
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>后台登录-明日科技有限公司</title>
<link rel="stylesheet" href="css/amazeui.min.css" />
<script src="js/main.js"></script>
</head>
<body style="background: url(img/login-bg.png) no-repeat">
	<div class="header" style="text-align: center; margin-top: 100px">
		<div class="am-g">
			<img src="img/loginTitle.png" />
		</div>
	</div>
	<div class="am-g" style="margin-top: 20px">
		<div class="am-u-lg-6  am-u-md-10  am-u-sm-centered"
			style="background: url(img/loginForm.png) no-repeat; height: 479px; width: 695px">
			<form action="login.jsp" method="post" class="am-form login-form"
				style="padding: 50px 0px 0px 120px; width: 550px"
				onSubmit="return LoginCheck()">
				<label for="name"> 用户名: </label> <input type="text" name="User"
					id="User" value=""> <br> <label for="ps"> 密码:</label>
				<input type="password" name="Pwd" id="Pwd" value=""> <br>
				<div class="am-cf">
					<input name="Action" type="hidden" value="Login"> <input
						type="submit" value="登 录" id="save"
						style="width: 100%; border-radius: 0.5em;"
						class="am-btn am-btn-primary am-btn-sm am-round">
				</div>
			</form>
		</div>
	</div>
</body>
</html>
