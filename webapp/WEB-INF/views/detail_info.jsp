<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<c:url value="${path}/res/css/detail_info.css"/>">
</head>
<body>
<div class="detail_wrap">
	<div class="tip_box">
		<div class="section_single">
			<div class="tip_title">Tip</div>
			<div class="tip_content">
				-알러지가 있는 음식은 요청사항에 기입 부탁드립니다.<br>
				-기념일&생일 방문일 경우 요청사항에 기입부탁드립니다.<br>
				-노키즈존 매장입니다.(코스 메뉴 이용가능한 10세 이상 입장 가능합니다.) <br/>
			</div>
		</div>
		<hr />
		<div class="detail_section">
			<div class="section_title">음식 종류</div>
			<div class="section_body">컨템퍼러리/양식/프랑스식</div>
		</div>
		<div class="detail_section">
			<div class="section_title">예산</div>
			<div class="section_body">16만원 이상(2인 기준)</div>
		</div>
		<hr />
		<div class="detail_section">
			<div class="section_title">판매 주류</div>
			<div class="section_body">와인 등</div>
		</div>
		<hr />
	</div>
</div>



</body>
</html>