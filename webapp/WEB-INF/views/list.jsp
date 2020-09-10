<%@page import="com.javaex.model.ShopVo"%>
<%@page import="java.util.ArrayList"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>밥풀 - 카페/베이커리</title>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@700&display=swap" rel="stylesheet">
<link rel="stylesheet"href="<c:url value='${path}/res/css/shoplist.css?ver=1'/>">
<link rel="stylesheet"href="<c:url value='${path}/res/css/star-rating-svg.css'/>">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<script src="http://code.jquery.com/jquery.js"></script>
</head>
<body>
	
	<%@include file="top_bar.jsp"%>	
	<script src="<c:url value='${path}/res/js/jquery.star-rating-svg.js'/>"></script>
	<%ArrayList<ShopVo> list = (ArrayList<ShopVo>)request.getAttribute("shoplist"); %>
	<!--리스트 베너 시작  -->
	<div id="list_banner"
		style="background : url(<c:url value='${path}/res/image/list_banner.png'/>)">
		<div id="banner_wrap">
			<div id="banner_title">카페/베이커리</div>
			<div id="banner_line">───</div>
			<div id="banner_title_eng">CAFE & BAKERY</div>
		</div>
	</div>
	<!--리스트 베너 끝 -->
 
	<!--목록 시작  -->
	<div id="content_wrap">
		<div id="content_list">
			<!--점포 숫자-->
			<div id="shop_number">         
				<p>
					레스토랑 총<span><%=list.size() %></span>개가 검색되었습니다.
				</p>
			</div>
			<!--점포 숫자 끝-->

			<!--목록 정렬 시작  -->
			<div id="shop_sort">
				<ul id="shop_sort_list">
					<li id="sort_star"><span>별점순</span></li>
					<li id="sort_resv"><span>예약순</span></li>
					<li id="sort_view"><span>조회순</span></li>
				</ul>
			</div>
			<!--목록 정렬 끝 -->
			
			<!--상점 목록 시작  -->
			<div id="shop_list">
			<%				
				for(int i=0;i<list.size();i++){
					ShopVo vo = list.get(i);
					if(vo.getShopIdx()%3 ==1){
			%>
				<div class="shop_first">
					<div class="list_img">
						<a class="img_a" href="detail?shopId=<%=vo.getShopIdx()%>" style="background-image: url(<c:url value="${path}/res/image/default.png"/>)">
							<div class="img_top">
								<span>예약 <%=vo.getReserv() %> 리뷰 <%=vo.getReview() %> 조회수<%=vo.getView() %></span>
								<span class="star_"><i class="far fa-star fa-2x"></i></span>		
							</div>
							<div class="img_bottom">
								<div class="shop_name"><%=vo.getName() %></div>
								<div class="shop_area"><%=vo.getLocation() %></div>
							</div>
						</a>
					</div>
					<div class="shop_desc">
						<div class="shop_star"><span class="star_span" id="shop_tmp<%=vo.getShopIdx()%>"></span><span class="shop_score"><%=vo.getScore() %>점</span></div>
						<div class="shop_budget"><%=vo.getBudget() %></div>
						<div class="shop_comment"><%=vo.getComment() %></div>
					</div>
					<div class="review_btn">
						<a class="review_a" href="detail?shopId=<%=vo.getShopIdx()%>">리뷰 쓰기</a>
					</div>
				</div>
				<%
					}else{ 
				%>
				<div class="shop_medium">
					<div class="list_img" style="background-image: url(<c:url value="${path}/res/image/default.png"/>)">
						<a class="img_a" href="detail?shopId=<%=vo.getShopIdx()%>" style="background-image: url(<c:url value="${path}/res/image/default.png"/>)">
							<div class="img_top">
								<span>예약 <%=vo.getReserv() %> 리뷰 <%=vo.getReview() %> 조회수<%=vo.getView() %></span>
								<span class="star_"><i class="far fa-star fa-2x"></i></span>		
							</div>
							<div class="img_bottom">
								<div class="shop_name"><%=vo.getName() %></div>
								<div class="shop_area"><%=vo.getLocation() %></div>
							</div>
						</a>
					</div>
					<div class="shop_desc">
						<div class="shop_star"><span class="star_span" id="shop_tmp<%=vo.getShopIdx()%>"></span><span class="shop_score"><%=vo.getScore() %>점</span></div>
						<div class="shop_budget"><%=vo.getBudget() %></div>
						<div class="shop_comment"><%=vo.getComment() %></div>
					</div>
					<div class="review_btn">
						<a class="review_a" href="detail?shopId=<%=vo.getShopIdx()%>">리뷰 쓰기</a>
					</div>
				</div>
				<%
					}
				}
				%>				
			</div>
			<!--상점 목록 끝 -->
			
			<!--페이지 번호 시작-->
			<div id="page_list">
				<ul>
					<li>1</li>
				</ul>
			</div>
			<!--페이지 번호 끝-->
		</div>
	</div>

	<!--목록 끝  -->
	<%@include file="footer.jsp"%>
</body>
<script>
		<c:forEach items="${shoplist}" var="shop">			
			$("#shop_tmp${shop.shopIdx}").starRating({
				initialRating : ${shop.score},
				starShape : 'rounded',
				useGradient : false,
				activeColor : '#f05e23',
				strokeWidth : 5,
				readOnly : true,
				starSize : 20
			});
		</c:forEach>

		$(".star_ > i ").on('click',function (e) {
			e.preventDefault();
			$(this).closest("span").toggleClass("on off")
		});	
			
</script>
</html>