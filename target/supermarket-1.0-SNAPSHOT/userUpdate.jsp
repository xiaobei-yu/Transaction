<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="css/style.css">
<style>
	a{
	text-decoration: none;}
</style>
<script type="text/javascript">
function checkit()
{
	var userName = document.getElementById("userName").value;
	var userAge = document.getElementById("userAge").value;
	var userTel = document.getElementById("userTel").value;
	
	if(userName==""){
		alert("用户名不能为空！");
		return false;
	}
	
	if(userAge==""||userAge>=200||userAge<=0){
		alert("年龄错误，请重新填写！！！");
		return false;
	}
	if(!(/^1[3456789]\d{9}$/.test(userTel))){ 
	    alert("手机号码有误，请重填");  
	    return false; 
	} 
	//判断是否是数字的正则表达式
	return true;
}
</script>
</head>
<body>
<div class="main">
	<div class="optitle clearfix">
		<div class="title">用户管理&gt;&gt;</div>
	</div>
	<form id="form1" name="form1" method="post" action="/updateById" onsubmit="return checkit();">
		<div class="content">
			<table class="box"><font color="red"></font>
			    <input type="hidden" name="userId" value="${upUser.userId}"/>
				<tr>
					<td class="field">用户名称：</td>
					<td><input type="text" name="userName" value="${upUser.userName}" id="userName" class="text" /> <font color="red">*</font></td>
				</tr>
					<input type="hidden" name="userPassword" />
				<tr>
					<td class="field">用户性别：</td>
					<td>
						<c:if test="${upUser.userSex==0}">
							<input type="radio" name="userSex" value="0" checked/>女
							<input type="radio" name="userSex" value="1"/>男
						</c:if>
						<c:if test="${upUser.userSex==1}">
							<input type="radio" name="userSex" value="0"/>女
							<input type="radio" name="userSex" value="1" checked/>男
						</c:if>
				    </td>
				</tr>
				<tr>
					<td class="field">用户年龄：</td>
					<td><input type="text" name="userAge" id="userAge" value="${upUser.userAge}" class="text"/> <font color="red">*</font></td>
				</tr>
				<tr>
					<td class="field">用户电话：</td>
					<td><input type="text" name="userTel" id="userTel" value="${upUser.userTel}" class="text"/> <font color="red">*</font></td>

				</tr>
				<tr>
					<td class="field">用户地址：</td>
					<td>
						<textarea name="userLoc" id="userLoc" class="text" cols="45" rows="5">
							${upUser.userLoc}
						</textarea>
					</td>
				</tr>
				<tr>
					<td class="field">用户权限：</td>
					<td>
					  <c:if test="${upUser.userRole==1}">
						  <input type="radio" name="userRole" id="auth" value="2"/>普通用户
						  <input type="radio" name="userRole" id="auth" value="1" checked="checked"/>经理
					  </c:if>
						<c:if test="${upUser.userRole==2}">
							<input type="radio" name="userRole" id="auth" value="2" checked/>普通用户
							<input type="radio" name="userRole" id="auth" value="1"/>经理
						</c:if>
					</td>
				</tr>
			</table>
		</div>
		<div class="buttons">
			<input type="submit" name="button" id="button" value="修改数据" class="input-button"/>
			<input type="button" name="button" id="button" value="返回" class="input-button"/>
			<input type="button" name="button" id="deleteUserbutton" value="删除" class="input-button"/>
			<input type="button" name="button" id="updatePwdBtn" value="修改密码" class="input-button"/>
		</div>
	</form>
</div>
</body>
</html>







