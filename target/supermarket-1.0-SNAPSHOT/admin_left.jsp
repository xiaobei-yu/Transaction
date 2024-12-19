<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
</head>
<body class="frame-bd">
<ul class="left-menu">
	<%--功能权限分配 管理员 所有功能  用户 用户管理 user.userRole--%>
	<li><a href="" target="mainFrame"><img src="images/btn_bill.gif" /></a></li>
	<c:if test="${user.userRole==1}">
		<li><a href="" target="mainFrame"><img src="images/btn_suppliers.gif" /></a></li>
	</c:if>
	<c:if test="${user.userRole==1}">
		<li><a href="/selectByPage?nowPage=1" target="mainFrame"><img src="images/btn_users.gif" /></a></li>
	</c:if>
	<c:if test="${user.userRole==2}">
		<li><a href="userSelf.jsp" target="mainFrame"><img src="images/btn_users.gif" /></a></li>
	</c:if>
	<li><a href="login.jsp"><img src="images/btn_exit.gif" /></a></li>
</ul>
</body>
</html>
