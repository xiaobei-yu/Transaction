<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
<script type="text/javascript">
function checkit()
{
	var providerNo = document.getElementById("providerNo").value;
	var providerName = document.getElementById("providerName").value;

	if(providerNo==""){
		alert("供应商编号不能为空！");
		return false;
	}

	if(providerName==""){
		alert("供应商名称不能为空！");
		return false
	}
	//判断是否是数字的正则表达式
	return true;
}
</script>
</head>
<body>
<div class="main">
	<div class="optitle clearfix">
		<div class="title">供应商管理&gt;&gt;</div>
	</div>
	<form id="form1" name="form1" method="post" action="" onsubmit="return checkit();">
		<div class="content">
		<font color="red"></font>
			<table class="box">

			<tbody><tr>
					<td class="field">供应商编号：</td>
					<td><input name="providerNo" id="providerNo" class="text" type="text"> <font color="red">*</font></td>
				</tr>
				<tr>
					<td class="field">供应商名称：</td>
					<td><input name="providerName" id="providerName" value="" class="text" type="text"> <font color="red">*</font></td>

				</tr>
			<tr>
					<td class="field">供应商描述：</td>
					<td><textarea name="providerDescribe" id="providerDescribe" cols="45" rows="5"></textarea></td>
				</tr>
				<tr>
					<td class="field">供应商联系：</td>

					<td><input name="providerContacts" id="providerContacts" value="" class="text" type="text"></td>
				</tr>
				<tr>
					<td class="field">供应商电话：</td>
					<td><input name="providerTel" id="providerTel" value="" class="text" type="text"></td>
				</tr>
				
				<tr>
					<td class="field">供应商地址：</td>
					<td><input name="providerLoc" id="providerLoc" value="" class="text" type="text"></td>
				</tr>
			</tbody></table>
		</div>

		<div class="buttons">
			<input name="button" id="button" value="提交" class="input-button" type="submit"> 
			<input name="button" id="button" onclick="window.location='providerAdmin.jsp';" value="返回" class="input-button" type="button"> 
		</div>
	</form>
</div>
</body>
</html>
