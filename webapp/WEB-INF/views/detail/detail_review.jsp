<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<c:url value='${path}/res/css/detail_review.css?ver=1'/>">
</head>
<body>
	<div id="review_wrap">
	<form action="review_upload" method="post">
		<div id="review_write_wrap">
			<div id="review_title">리뷰 쓰기</div>			
			<ul id="list">			
				<li id="list_grade" class="item">
					<div class="list_name">별점</div>
					<div id="star_score"></div>
				</li>
				<li id="list_text" class="item text">
					<div class="list_name">리뷰</div>
					<textarea name="review_area" id="review_area" cols="30" rows="10" placeholder="매장에 대한 리뷰를 작성해주세요."></textarea>
				</li>
				<li id="list_photo" class="item">
					<div class="list_name">사진 등록</div>
					<input type="file" />
				</li>				
			</ul>			
		</div>
		<input type="submit" id="submit" value="리뷰 올리기"/>
		</form>
	</div>
</body>
</html>