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
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
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
						<div id="star_score">
							<span id="star_span"></span> <span class="score"></span> <span
								class="comment"></span>
						</div>
					</li>
					<li id="list_text" class="item text">
						<div class="list_name">리뷰</div> <textarea name="review_area"
							id="review_area" cols="30" rows="10"
							placeholder="매장에 대한 리뷰를 작성해주세요."></textarea>
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
				<a class="author" href=""> <span class="thumbnail"
					style="background-image: url(<c:url value="${path}/res/image/user2.png"/>);"></span>
					<div class="info">
						<p class="name">홍길동</p>
						<p class="stat">0 리뷰</p>
					</div>
				</a>
				<hr />
				<div class="star_grade">
					<div class="grade"></div>
					<div class="grade_comment"></div>
				</div>
				<div class="text">대충 리뷰내용 대충 리뷰내용 대충 리뷰내용 대충 리뷰내용 대충 리뷰내용 대충 리뷰내용 대충 리뷰내용 대충 리뷰내용 대충 리뷰내용 대충 리뷰내용 </div>
				<div class="photo">
					<button>
						<i class="image" style="display:inline-block;background-image : url(<c:url value="${path}/res/image/user2.png"/>);"></i>
					</button>
					<button>
						<i class="image" style="display:inline-block;background-image : url(<c:url value="${path}/res/image/user2.png"/>);"></i>
					</button>
					<button>
						<i class="image" style="display:inline-block;background-image : url(<c:url value="${path}/res/image/user2.png"/>);"></i>
					</button>
				</div>
				<div class="action">
					<button>
						<i class="far fa-thumbs-up"></i>
						<p>좋아요</p>
						<span>0</span>
					</button>
					<button>
						<i class="far fa-thumbs-down"></i>
						<p>싫어요</p>
						<span>0</span>
					</button>
				</div>			
			</div>
			<div class="review">
				<a class="author" href=""> <span class="thumbnail"
					style="background-image: url(<c:url value="${path}/res/image/user2.png"/>);"></span>
					<div class="info">
						<p class="name">홍길동</p>
						<p class="stat">0 팔로워</p>
					</div>

				</a>
			</div>
		</div>
	</div>
</body>
<script>
	var cur_rating = 0;

	$("#star_span").starRating({
		initialRating : 0,
		starShape : 'rounded',
		useGradient : false,
		activeColor : '#f05e23',
		strokeWidth : 5,
		starSize : 25,
		disableAfterRate : false,
		onHover : function(currentIndex, currentRating, $el) {
			mk_comment(currentIndex);
		},
		onLeave : function(currentIndex, currentRating, $el) {
			$('.score').text("0점");
			$('.comment').text("");				
		},
		callback : function(currentRating) {
			cur_rating = currentRating;
		}
	});	 
	
	$("#star_span").mouseout(function() {
	     $('#star_span').starRating({
	 		initialRating : 0,
			starShape : 'rounded',
			useGradient : false,
			activeColor : '#f05e23',
			strokeWidth : 5,
			starSize : 25,
			disableAfterRate : false,
			onHover : function(currentIndex, currentRating, $el) {
				mk_comment(currentIndex);
			},
			onLeave : function(currentIndex, currentRating, $el) {
				$('.score').text("0점");
				$('.comment').text("");				
			},
			callback : function(currentRating) {
				cur_rating = currentRating;
			}
		});	 
	});
	
	function mk_comment(currentIndex) {
		$('.score').text(currentIndex + "점");
		if (currentIndex == 0.5) {
			$('.comment').text("최악이에요 다시는 오고싶지 않아요.");
		} else if (currentIndex == 1) {
			$('.comment').text("실망이에요. 집에서 먹는게 나을뻔 했어요.");
		} else if (currentIndex == 1.5) {
			$('.comment').text("맛,분위기,서비스 ... 전부 별로였어요.");
		} else if (currentIndex == 2) {
			$('.comment').text("평균이하! 이정도 레스토랑은 어디든 있어요.");
		} else if (currentIndex == 2.5) {
			$('.comment').text("다 괜찮은데 조금 아쉬워요.");
		} else if (currentIndex == 3) {
			$('.comment').text("보통이에요.이정도면 괜찮아요.");
		} else if (currentIndex == 3.5) {
			$('.comment').text("평균 이상! 한 번 쯤은 다시 올 것 같아요.");
		} else if (currentIndex == 4) {
			$('.comment').text("인상적이네요. 추천하고싶어요");
		} else if (currentIndex == 4.5) {
			$('.comment').text("오랫동안 기억에 남을거 같아요!");
		} else if (currentIndex == 5) {
			$('.comment').text("완벽! 더이상 할말이 없어요.");
		}
	}

	$(".grade").starRating({
		initialRating : 3,
		starShape : 'rounded',
		useGradient : false,
		activeColor : '#f05e23',
		strokeWidth : 5,
		readOnly : true,
		starSize : 20,
		callback : function(currentRating) {
			cur_rating = currentRating;
		}
	});

	$('#submit').click(function(e) {
		e.preventDefault();
		var action = $('#form').attr("action");

		var form_data = {
			star_span : cur_rating,
			review_area : $('#review_area').val()
		};

		$.ajax({
			type : "POST",
			url : action,
			data : form_data,
			success : function(data) {
				if (data == "success") {
					alert("성공");
				}
			},
			error : function() {
				alert("에러발생");
			}
		});
	});
	$(".action > button").hover(function() {
		$(this).children("p").attr("border-color", "#f05e23");
	});

	
</script>
</html>