<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="css/style.css">
<style type="text/css">
	a{
		text-decoration: none;
	}
</style>

<script type="text/javascript">
	function doit(flag, id) {
		if (flag == "del") {
			if (confirm("确认删除吗？") != true)
				return;
		}
	}
</script>
</head>
<body>

	<div class="menu">

		<table>
			<tbody>
				<tr>
					<td>
						<form method="get" action="/selectByPage">
							用户名称：<input name="uname" class="input-text" value="${param.uname}" type="text">&nbsp;&nbsp;&nbsp;&nbsp;
							<input value="查 询" type="submit">
						</form>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
	<div class="main">
		<div class="optitle clearfix">
			<em><input value="导出数据" class="input-button"  type="button"></em>
			<em><input value="添加数据" class="input-button" onclick="window.location='userAdd.jsp'" type="button"></em>
			<div class="title">用户管理&gt;&gt;</div>
		</div>
		<div class="content">
			<table class="list">
				<tbody>
					<tr>
						<td width="70" height="29"><div class="STYLE1" align="center">编号</div></td>
						<td width="80"><div class="STYLE1" align="center">用户名称</div></td>
						<td width="100"><div class="STYLE1" align="center">性别</div></td>
						<td width="100"><div class="STYLE1" align="center">年龄</div></td>

						<td width="150"><div class="STYLE1" align="center">电话</div></td>
						<td width="150"><div class="STYLE1" align="center">地址</div></td>
						<td width="150"><div class="STYLE1" align="center">权限</div></td>
					</tr>
					<%--遍历后端传递的数据--%>
					<c:forEach items="${userList}" var="user" varStatus="status">
						<tr>
							<td width="70" height="29"><div class="STYLE1" align="center">${status.count}</div></td>
							<td width="80"><div class="STYLE1" align="center">
								<a href="/selectById?userId=${user.userId}">${user.userName}</a>
							</div></td>
							<c:if test="${user.userSex==0}">
								<td width="100"><div class="STYLE1" align="center">女</div></td>
							</c:if>
							<c:if test="${user.userSex==1}">
								<td width="100"><div class="STYLE1" align="center">男</div></td>
							</c:if>
							<td width="100"><div class="STYLE1" align="center">${user.userAge}</div></td>
							<td width="150"><div class="STYLE1" align="center">${user.userTel}</div></td>
							<td width="150"><div class="STYLE1" align="center">${fn:substring(user.userLoc, 0, 5)}</div></td>
							<c:if test="${user.userRole==1}">
								<td width="100"><div class="STYLE1" align="center">管理员</div></td>
							</c:if>
							<c:if test="${user.userRole==2}">
								<td width="100"><div class="STYLE1" align="center">普通用户</div></td>
							</c:if>
						</tr>
					</c:forEach>
				</tbody>
				<%--分页--%>
				<tr>
					<td width="70" height="29" colspan="7">
						<a href="/selectByPage?nowPage=1&uname=${param.uname}">首页</a>
						<c:if test="${nowPage<=1}">
							<a href="/selectByPage?nowPage=1&uname=${param.uname}">上一页</a>
						</c:if>
						<c:if test="${nowPage>1}">
							<a href="/selectByPage?nowPage=${nowPage-1}&uname=${param.uname}">上一页</a>
						</c:if>
						<c:if test="${nowPage<pages}">
							<a href="/selectByPage?nowPage=${nowPage+1}&uname=${param.uname}">下一页</a>
						</c:if>
						<c:if test="${nowPage>=pages}">
							<a href="/selectByPage?nowPage=${pages}&uname=${param.uname}">下一页</a>
						</c:if>
						<a href="/selectByPage?nowPage=${pages}&uname=${param.uname}">尾页</a>
						当前第${nowPage}页 共有${pages}页 共有${total}条记录
					</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>