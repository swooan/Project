<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="<c:url value="${path}/res/css/mypage.css"/>"/>

</head>
<body>
<%-- 
<ul id="my_notice">
	<li class="my_list">
		<div>
			<img src="<c:url value="${path}/res/image/user2.png"/>" height="180px"/>
		</div>
		<div class="my_info">
			내 소식이 없습니다.
		</div>
	</li>
</ul>
 --%>
<ul id="my_notice">
	<li class="my_list">
		<div>
			<img src="<c:url value="${path}/res/image/user2.png"/>" height="180px"/>
		</div>
		<div id="my_info">
			<div id="my_info_message">
			내 소식이 없습니다.
			</div>
		</div>
	</li>
</ul>

</body>
</html>