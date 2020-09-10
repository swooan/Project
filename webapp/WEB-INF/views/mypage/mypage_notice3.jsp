<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<c:url value="${path}/res/css/mypage.css?ver=1"/>"/>
</head>
<body>

<ul id="bobpool_notice">
	<li class="bobpool_list">
		<div>
			<img src="<c:url value="${path}/res/image/user2.png"/>" height="180px"/>
		</div>
		<div id="bobpool_info">
			<div id="bobpool_message">
			밥풀에 오신 것을 환영합니다! 가입 축하 포인트 3,000P가 적립되었습니다.
			</div>
			<div id="bobpool_time">
				<script>document.write(moment("2020-08-20").locale("ko").fromNow());</script>
			</div>
		</div>
	</li>
</ul>
<div id="mypage_pagination">
	<div id="mypage_list">
		<ul id="pagination" onselectstart="return false;">
			<li id="prevAll"> &nbsp<<&nbsp </li>
			<li id="prev">&nbsp < &nbsp </li>
			<li id="current" data-page="1">&nbsp 1 &nbsp </li>
			<li id="next">&nbsp > &nbsp</li>
			<li id="nextAll">&nbsp >> </li>
		</ul>
	</div>
</div>

</body>
</html>