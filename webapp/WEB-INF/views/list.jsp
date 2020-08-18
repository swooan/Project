<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
html, body {
	padding: 0;
	margin: 0;
}

#list_banner {
	border: 1px solid black;
	background: url(<spring:url value='/imgs/list_banner.png'/>);
	width: 1920px;
	height: 420px;
}
</style>
</head>
<body>
	<div id="list_banner">
		
	</div>
</body>
</html>