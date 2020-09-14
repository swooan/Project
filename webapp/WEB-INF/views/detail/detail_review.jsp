<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<c:url value='${path}/res/css/detail_review.css?ver=1'/>">
<link rel="stylesheet" href="<c:url value='${path}/res/css/star-rating-svg.css'/>">
<script src="http://code.jquery.com/jquery.js"></script>
<script src="<c:url value='${path}/res/js/jquery.star-rating-svg.js'/>"></script>
</head>
<body>
	<div id="review_wrap">
		<form action="review_upload" method="post" id="form">
			<div id="review_write_wrap">
				<div id="review_title">리뷰 쓰기</div>
				<ul id="list">
					<li id="list_grade" class="item">
						<div class="list_name">별점</div>
						<div id="star_score"><span id="star_span"></span></div>
					</li>
					<li id="list_text" class="item text">
						<div class="list_name">리뷰</div> 
						<textarea name="review_area" id="review_area" cols="30" rows="10" placeholder="매장에 대한 리뷰를 작성해주세요."></textarea>
					</li>
					<li id="list_photo" class="item">
						<div class="list_name">사진 등록</div> <input type="file" />
					</li>
				</ul>
			</div>
			<input type="submit" id="submit" value="리뷰 올리기" />
		</form>
		<div id="sort_wrap">
			<span class="title">리뷰</span>
			<ul class="sort_list">
				<li class="listitem">최신순</li>
				<li class="listitem">인기순</li>
			</ul>
		</div>
		<div class="review_list">
			<div class="review">
				<a class="author" href="">
				<span class="thumbnail" style="display : none; background-image: url(<c:url value="${path}/res/image/user2.png"/>);"></span>
				<div class="info">
					<p class="name">홍길동</p>
					<p class="stat">10 팔로워</p>
				</div>				
				
				</a>
			</div>
			<div class="review">
				<a class="author" href="">
				<span class="thumbnail" style="display : none; background-image: url(<c:url value="${path}/res/image/user2.png"/>);"></span>
				<div class="info">
					<p class="name">홍길동</p>
					<p class="stat">10 팔로워</p>
				</div>				
				
				</a>
			</div>
		</div>
	</div>
</body>
<script>     		
	var cur_rating = 0;
	 $("#star_span").starRating({
		initialRating :0,
		starShape : 'rounded',
		useGradient : false,
		activeColor : '#f05e23',
		strokeWidth : 5,
		starSize : 25,
		callback: function(currentRating) {
			cur_rating = currentRating;
		}
	});
	 
	 $('#submit').click(function (e) {
			e.preventDefault();
			var action = $('#form').attr("action");
			
			var form_data = {
				star_span: cur_rating,
                review_area: $('#review_area').val()
			};
			
			$.ajax({
             type: "POST",
             url: action,
             data: form_data,
             success: function(data) {
               if(data == "success") {                    
                alert("성공");
               } 
             },
             error: function() {
             	alert("에러발생");
             }
		     });
		});	
</script>
</html>