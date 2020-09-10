<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<c:url value="${path}/res/css/notice.css?ver=1"/>"/>
</head>
<body>
<%@include file="top_bar.jsp" %>
<!-- 공지사항 -->
<div id="notice_banner">
	<img src="<c:url value="${path}/res/image/notice.png"/>"/>
</div>

<h1 class="notice_title">공지사항</h1>
	<ul id="notice_list">
		<li class="notice_open">
			<div class="notice_title">
				서버 점검 안내
				<span>2020.08.20
					<img src="<c:url value="${path}/res/image/down.png"/>"/>
				</span>
				<div>
				</div>
			</div>
			<div class="notice_body">
				
			</div>
		</li>
		<li class="notice_open">
			<div class="notice_title">
				서버 점검 안내
				<span>2020.08.20
					<img src="<c:url value="${path}/res/image/down.png"/>"/>
				</span>
				<div>
				</div>
			</div>
			<div class="notice_body">
			
			</div>
		</li>
		<li class="notice_open">
			<div class="notice_title">
				서버 점검 안내
				<span>2020.08.20
					<img src="<c:url value="${path}/res/image/down.png"/>"/>
				</span>
				<div>
				</div>
			</div>
			<div class="notice_body">
			
			</div>
		</li>
		<li class="notice_open">
			<div class="notice_title">
				서버 점검 안내
				<span>2020.08.20
					<img src="<c:url value="${path}/res/image/down.png"/>"/>
				</span>
				<div>
				</div>
			</div>
			<div class="notice_body">
			
			</div>
		</li>
		<li class="notice_open">
			<div class="notice_title">
				서버 점검 안내
				<span>2020.08.20
					<img src="<c:url value="${path}/res/image/down.png"/>"/>
				</span>
				<div>
				</div>
			</div>
			<div class="notice_body">
			
			</div>
		</li>
		<li class="notice_open">
			<div class="notice_title">
				서버 점검 안내
				<span>2020.08.20
					<img src="<c:url value="${path}/res/image/down.png"/>"/>
				</span>
			</div>
			<div class="notice_body">
			
			</div>
		</li>
	</ul>

<%@include file="footer.jsp" %>
<script src="http://code.jquery.com/jquery.js"></script>
<script>
$("#notice_list>.notice_open").click(function(e){		
	if($(this).children(".notice_body").css("display") == "none") {
		$(".notice_body").hide();
		$(this).children(".notice_body").show();
		$(this).children(".notice_title").children("span").children("img").attr('src', '<c:url value="${path}/res/image/up.png"/>');
		/* $("#notice_list .notice_title>span>img").attr('src', '<c:url value="${path}/res/image/up.png"/>'); */
	}
	else {
		$(this).children(".notice_body").hide();
		$("#notice_list .notice_title>span>img").attr('src', '<c:url value="${path}/res/image/down.png"/>');
	}
	e.stopPropagation();
});	
</script>
</body>
</html>