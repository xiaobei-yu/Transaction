<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>系统登录 - 超市账单管理系统</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
</head>
<body class="blue-style">
<div id="login">
	<div class="icon"></div>
	<div class="login-box">
		<form method="post" action="/login">
			<dl>
				<dt>用户名：</dt>
				<dd><input type="text" name="userName" class="input-text" /></dd>
				<dt>密　码：</dt>
				<dd><input type="password" name="userPassword" class="input-text" /></dd>
			</dl>
			<div class="buttons">
				<input type="submit" name="submit" value="登录系统" class="input-button" />
				<input type="reset" name="reset" value="重　　填" class="input-button" />
			</div>
			<div style="color: red;margin-top: 5px;margin-left: 280px;font-weight: bold;">${error}</div>
		</form>
	</div>
</div>
</body>
</html>

<script language="JavaScript" type="text/javascript"> 
        if (window != top) 
            top.location.href = location.href; 
</script> 
