<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
		<div>
			<img src="img/loginTitle.png" />
		</div>
	</div>
	<div class="am-g" style="margin-top: 20px">
		<div class="am-u-lg-6 am-u-md am-u-sm-centered"
			style="background: url(img/loginForm.png) no-repeat; height: 479px; width: 695px">
			<form action="login.jsp" mehtod="post" class="am-form login-form"
				style="padding: 50px 0px 0px 120px; width: 550px"
				onsubmit="return loginCheck()">
				<label for="name">用户名：</lable> <input type="text" name="User"
					id="User" value=""><br> <lable for="ps">密码</lable> <input
					type="password" name="Pwd" value=""><br>
					<div class="am-cf">
						<input name="Action" type="hidden" value="Login"><input
							type="submit" value="登录" id="save"
							style="width: 100%; border-radius: 0.5em;"
							class="am-btn am-btn-primary am-btn-sm am-round">
					</div>
			</form>
		</div>
	</div>
</body>
</html>