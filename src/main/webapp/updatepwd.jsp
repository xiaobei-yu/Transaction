<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="css/style.css">
<script type="text/javascript" src="js/jquery.min.js" ></script>
<script type="text/javascript" src="js/data.js" ></script>
</head>
<body>
<div class="main">
	<div class="optitle clearfix">
		<div class="title">用户管理&gt;&gt;</div>
	</div>
	<form id="form1" name="form1" method="post" action="#">

		<div class="content">
			<table class="box"><font color="red"></font>
				<tr>
					<td class="field">旧的密码：</td>
					<td><input type="text" name="userId" id="userpwd" class="text"/> <font color="red">*</font></td>

				</tr>
				<tr>
					<td class="field">新的密码：</td>
					<td><input type="text" name="userId" id="newpwd" class="text"/> <font color="red">*</font></td>

				</tr>
				<tr>
					<td class="field">确认密码：</td>
					<td><input type="text" name="userId" id="repwd" class="text"/> <font color="red">*</font></td>

				</tr>
				
			</table>
		</div>
		<div class="buttons">
			<input type="button" name="button" id="updatePwdBtn" value="修改密码" class="input-button"/>
			<input type="button" name="button" id="button" onclick="window.location='userAdmin.jsp';" value="返回" class="input-button"/> 
		</div>

	</form>
</div>
</body>
</html>
