<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="<c:url value='${path}/res/css/filters.css'/>">
<script src="<c:url value='${path}/res/js/md5.js'/>"></script>
<!-- <script src="http://code.jquery.com/jquery.js"></script> -->
<script>
	$(document).ready(function() {
		/* /* $('.section_price').on('click', function() {
			$('.filters_popup', this).hide();
			$('.filters_popup', this).show().css("visibility","visible");
		}); */
		
 		$(".confirm_btn").click(function(e) {
			$("#nav_city>ul").hide();
			$("#nav_shading.shading_bg").hide();
			$("#nav_area>.box").hide();
			$("#nav_genre>.box").hide();
			$("#nav_search>#nav_recommend").hide();
			$("#popup_body").hide();
			$("#nav_btn").siblings().removeClass('focus');
			$(".section_price").siblings().removeClass('is-open');
			$(".filters_popup").hide();
			$('#nav_wrap').css('z-index', 100);
			e.stopPropagation();
		});	 
		
		$(".section_place").click(function(e) {
			if ($("#nav_area").attr("class").indexOf("focus") == -1) {
				$("#nav_city>ul").hide();
				$("#nav_genre>.box").hide();
				$(".filters_popup").hide();
				$('#nav_wrap').css('z-index', 100);
				
				$('#nav_area>.box').show();
				// focus주고 형제들은 focus지우기
				$("#nav_area").addClass('focus').siblings().removeClass('focus');
				
				$(".section_add_info").addClass('is-open').siblings().removeClass('is-open');
				
				// 배경 어둡게
				$("#nav_shading.shading_bg").show();	
			} else {
				$("#nav_btn").siblings().removeClass('focus');
			}
			e.stopPropagation();
		});
		
		$(".section_genre").click(function(e) {
			if ($("#nav_genre").attr("class").indexOf("focus") == -1) {
				$("#nav_city>ul").hide();
				$("#nav_area>.box").hide();
				$(".filters_popup").hide();
				$('#nav_wrap').css('z-index', 100);
				
				$('#nav_genre>.box').show();
				// focus주고 형제들은 focus지우기
				$("#nav_genre").addClass('focus').siblings().removeClass('focus');
				
				$(".section_add_info").addClass('is-open').siblings().removeClass('is-open');
				
				// 배경 어둡게
				$("#nav_shading.shading_bg").show();
			} else {
				$("#nav_btn").siblings().removeClass('focus');
			}
			e.stopPropagation();
		});

		$(".section_price").click(function(e) {
			$(".filters_popup").hide();
			
			$("#nav_area>.box").hide();
			$("#nav_genre>.box").hide();
			$("#nav_search>#nav_recommend").hide();
			$("#popup_body").hide();
			
			$('.section_price>.filters_popup').show();
			$('#nav_wrap').css('z-index', 30);
			// focus주고 형제들은 focus지우기
			$(this).addClass('is-open').siblings().removeClass('is-open');
			// 배경 어둡게
			$(".shading_bg").show();
			e.stopPropagation();
		}).on('click', '.filters', function(e) {
			e.stopPropagation();
		});

		$(".section_add_info").click(function(e) {
			$(".filters_popup").hide();
			
			$("#nav_area>.box").hide();
			$("#nav_genre>.box").hide();
			$("#nav_search>#nav_recommend").hide();
			$("#popup_body").hide();
			
			$('.section_add_info>.filters_popup').show();
			$('#nav_wrap').css('z-index', 30);
			// focus주고 형제들은 focus지우기
			$(this).addClass('is-open').siblings().removeClass('is-open');
			// 배경 어둡게
			$(".shading_bg").show();
			e.stopPropagation();
		}).on('click', '.filters', function(e) {
			e.stopPropagation();
		});

		$(".section_table").click(function(e) {
			$(".filters_popup").hide();
			
			$("#nav_area>.box").hide();
			$("#nav_genre>.box").hide();
			$("#nav_search>#nav_recommend").hide();
			$("#popup_body").hide();
			
			$('.section_table>.filters_popup').show();
			$('#nav_wrap').css('z-index', 30);
			// focus주고 형제들은 focus지우기
			$(this).addClass('is-open').siblings().removeClass('is-open');
			// 배경 어둡게
			$(".shading_bg").show();
			e.stopPropagation();
		}).on('click', '.filters', function(e) {
			e.stopPropagation();
		});

		$(".section_liquor").click(function(e) {
			$(".filters_popup").hide();
			
			$("#nav_area>.box").hide();
			$("#nav_genre>.box").hide();
			$("#nav_search>#nav_recommend").hide();
			$("#popup_body").hide();
			
			$('.section_liquor>.filters_popup').show();
			$('#nav_wrap').css('z-index', 30);
			// focus주고 형제들은 focus지우기
			$(this).addClass('is-open').siblings().removeClass('is-open');
			// 배경 어둡게
			$(".shading_bg").show();
			e.stopPropagation();
		}).on('click', '.filters', function(e) {
			e.stopPropagation();
		});
		
		/* 팝업 데이터 쓰기 */
		$('.section_price > div.filters_popup > ul > li > input').change(function() {
			console.log(this);
		$(this).parent().siblings().find(">input").prop('checked',false);

		var dpValue = $(this).next("label").text() + " (2인 기준)";
		if ($(this).is(":checked") === false || $(this).attr('id') == 'price_all')
			dpValue = "예산 (2인 기준)";

		$(".section_price > span").html(dpValue);
		});
		/**/
		$('.section_add_info > .filters_popup > ul > li > input:not([id$=all])').change(function() {
			var state = $(this).is(":checked");
            var id = $(this).val();
			var str = $(this).next("label").text();
			
			if(state) {
				$("#add_info_sel_list").append("<li data-id='"+md5(id)+"'><span>"+str+"</span>"+
				"<div class='iconDelete' style='background-image: url(<c:url value="${path}/res/image/menubar/deleteBtn.png"/>)'></div>"+"</li>");
			} else {
				$("li[data-id="+md5(id)+"]").remove();
			};
		
			var length = $(this).closest("ul").find("input:checked:not([id$=all])").length;
			
			if( length === 0 ) {
				length = "부가 정보";
			} else {
				length += "개 선택";
			}
			
			$(".section_add_info > span").html(length);
		});	
		/**/
		$('.section_table > .filters_popup > ul > li > input:not([id$=all])').change(function() {
			var state = $(this).is(":checked");
            var id = $(this).val();
			var str = $(this).next("label").text();
			
			if(state) {
				$("#table_sel_list").append("<li data-id='"+md5(id)+"'><span>"+str+"</span>"+
				"<div class='iconDelete' style='background-image: url(<c:url value="${path}/res/image/menubar/deleteBtn.png"/>)'></div>"+"</li>");
			} else {
				$("li[data-id="+md5(id)+"]").remove();
			};
			
			var length = $(this).closest("ul").find("input:checked:not([id$=all])").length;
			if( length === 0 ) {
				length = "테이블 종류";
			} else {
				length += "개 선택";
			}
			
			$(".section_table > span").html(length);
		
		});	
		/**/
		$('.section_liquor > .filters_popup > ul > li > input:not([id$=all])').change(function() {
			var state = $(this).is(":checked");
            var id = $(this).val();
			var str = $(this).next("label").text();
			
			if(state) {
				$("#liquor_sel_list").append("<li data-id='"+md5(id)+"'><span>"+str+"</span>"+
				"<div class='iconDelete' style='background-image: url(<c:url value="${path}/res/image/menubar/deleteBtn.png"/>)'></div>"+"</li>");
			} else {
				$("li[data-id="+md5(id)+"]").remove();
			};
		
			var length = $(this).closest("ul").find("input:checked:not([id$=all])").length;
			if( length === 0 ) {
				length = "판매 주류 정보";
			} else {
				length += "개 선택";
			}
			
			$(".section_liquor > span").html(length);
		});	
		/* #filter_sidebar > div.filters > div.section_add_info.is-open > div.filters_popup > ul > li:nth-child(1) > label */
		/* div.section:not(.price)>div.filter-popup>div.body>ul>li>input:not([id$=all])" */
		/* #filter_sidebar > div.filters > div.section_table.is-open > div.filters_popup > ul > li:nth-child(2) > label */
		 /* > div.filters_popup > ul > li > input:not([id$=all]) */
		$("#filter_sidebar > div.filters div.filters_popup > ul > li > input:not([id$=all])").change(function() {
            var all = $(this).closest("ul").find("li:first-of-type>input");
            var siblings = $(this).closest("ul").children(":not(:first-of-type)");
            var checked = siblings.children("input:checked").length;

            all.prop('checked', (checked == siblings.length));
		});
		// select all
		$("div.filter_popup>ul>li>input:not([id$=all])").change(function() {
			console.log("all");
            var all = $(this).closest("ul").find("li:first-of-type>input");
            var siblings = $(this).closest("ul").children(":not(:first-of-type)");
            var checked = siblings.children("input:checked").length;

            all.prop('checked', (checked == siblings.length));
        });	
		
		// selected_list delete
		$("ul#add_info_sel_list").delegate("li", "click", function(e){
			e.stopPropagation();
			$("input#" + $(this).data('id')).prop("checked", false).change();
		});
		
		// selected_list delete
		$("ul#table_sel_list").delegate("li", "click", function(e){
			e.stopPropagation();
			$("input#" + $(this).data('id')).prop("checked", false).change();
		});
		
		// selected_list delete
		$("ul#liquor_sel_list").delegate("li", "click", function(e){
			e.stopPropagation();
			$("input#" + $(this).data('id')).prop("checked", false).change();
		});
		
		/* 예산 전체 클릭 라디오 */
		$('#price_all').on('click', function(e) {
			console.log("!");
		});
		/* 체크박스 전체 클릭 */
		$('#additional_all').change(function() {
			var state = $(this).is(":checked");
			var siblings = $(this).closest('ul').find('li').siblings();
			
			if(state) {
				siblings = siblings.filter(function() {
					return $('input:not(:checked)', this).length == 1;
				});
			} else {
				siblings = siblings.filter(function() {
                    return $('input:checked', this).length == 1;
			});
				
			}
			siblings.children("input").prop('checked', state).change();
		});
		
		$('#table_all').on('click', function(e) {
			var state = $(this).is(":checked");
			var siblings = $(this).closest('ul').find('li').siblings();
			
			if(state) {
				siblings = siblings.filter(function() {
					return $('input:not(:checked)', this).length == 1;
				});
			} else {
				siblings = siblings.filter(function() {
                    return $('input:checked', this).length == 1;
			});
				
			}
			siblings.children("input").prop('checked', state).change();
		});
		
		$('#liquor_all').on('click', function(e) {
			var state = $(this).is(":checked");
			var siblings = $(this).closest('ul').find('li').siblings();
			
			if(state) {
				siblings = siblings.filter(function() {
					return $('input:not(:checked)', this).length == 1;
				});
			} else {
				siblings = siblings.filter(function() {
                    return $('input:checked', this).length == 1;
			});
				
			}
			siblings.children("input").prop('checked', state).change();
		});
		
	});
</script>
</head>
<body>
	<!-- 우측 메뉴바 -->
	<!-- 필터 사이드 바 -->
	<div id="filter_sidebar">
		<div class="filters">
			<!-- 필터 타이틀 -->
			<div class="section_title">필터로 더 자세하게 검색</div>
			<!-- 필터 지역 선택 -->
			<div class="section_place">
				<div class="filters_img"
					style="background-image: url(<c:url value="${path}/res/image/menubar/place.png"/>)"></div>
				<span>지역 선택</span>
			</div>
			<!-- 필터 음식 종류 -->
			<div class="section_genre">
				<div class="filters_img"
					style="background-image: url(<c:url value="${path}/res/image/menubar/spoon.png"/>)"></div>
				<span>음식 종류</span>
			</div>
			<!-- 필터  예산(2인 기준)-->
			<div class="section_price">
				<div class="filters_img"
					style="background-image: url(<c:url value="${path}/res/image/menubar/wallet.png"/>)"></div>
				<span>예산(2인 기준)</span>

				<div class="filters_popup">
					<div class="filter-bg"></div>
					<div class="popup_title">예산 (2인 기준)</div>
					<ul>
						<li><input type="radio" name="price_list" id="price_all"
							checked> <label for="price_all">전체</label></li>
						<li><input type="radio" data-val="$" name="price_list"
							id="c3e97dd6e97fb5125688c97f36720cbe"> <label
							for="c3e97dd6e97fb5125688c97f36720cbe">5만원 미만</label></li>
						<li><input type="radio" data-val="$$" name="price_list"
							id="58859d93c30e635814dc980ed86e3f84"> <label
							for="58859d93c30e635814dc980ed86e3f84">5-10만원</label></li>
						<li><input type="radio" data-val="$$$" name="price_list"
							id="54ce99fa85c92b1d87678436e956a2e8"> <label
							for="54ce99fa85c92b1d87678436e956a2e8">10-16만원</label></li>
						<li><input type="radio" data-val="$$$$" name="price_list"
							id="f1fd19f04d53a15bbc21f4179282c5d5"> <label
							for="f1fd19f04d53a15bbc21f4179282c5d5">16만원 이상</label></li>
					</ul>
					<button type="button" class="confirm_btn">확인</button>
				</div>
			</div>
			<!-- 필터 부가 정보 -->
			<div class="section_add_info">
				<div class="filters_img"
					style="background-image: url(<c:url value="${path}/res/image/menubar/cup.png"/>)"></div>
				<span>부가 정보</span>
				<ul class="selected_list" id="add_info_sel_list"></ul>
				<div class="filters_popup">
					<div class="filter-bg"></div>
					<div class="popup_title">부가 정보</div>
					<ul>
						<li><input type="checkbox" id="additional_all"><label
							for="additional_all">전체 선택</label></li>
						<li><input type="checkbox"
							id="185c29dc24325934ee377cfda20e414c" value="627"><label
							for="185c29dc24325934ee377cfda20e414c">늦은 저녁에도 영업을 하는</label></li>
						<li><input type="checkbox"
							id="a733fa9b25f33689e2adbe72199f0e62" value="623"><label
							for="a733fa9b25f33689e2adbe72199f0e62">단체석이 있는</label></li>
						<li><input type="checkbox"
							id="42e77b63637ab381e8be5f8318cc28a2" value="628"><label
							for="42e77b63637ab381e8be5f8318cc28a2">데이트 하기 좋은</label></li>
						<li><input type="checkbox"
							id="9cc138f8dc04cbf16240daa92d8d50e2" value="630"><label
							for="9cc138f8dc04cbf16240daa92d8d50e2">비즈니스 미팅에 어울리는</label></li>
						<li><input type="checkbox"
							id="051e4e127b92f5d98d3c79b195f2b291" value="629"><label
							for="051e4e127b92f5d98d3c79b195f2b291">룸이 준비되어 있는</label></li>
						<li><input type="checkbox"
							id="48ab2f9b45957ab574cf005eb8a76760" value="624"><label
							for="48ab2f9b45957ab574cf005eb8a76760">런치 메뉴가 있는</label></li>
						<li><input type="checkbox"
							id="233509073ed3432027d48b1a83f5fbd2" value="625"><label
							for="233509073ed3432027d48b1a83f5fbd2">브런치 메뉴가 있는</label></li>
						<li><input type="checkbox"
							id="45645a27c4f1adc8a7a835976064a86d" value="626"><label
							for="45645a27c4f1adc8a7a835976064a86d">야외 테라스 자리가 있는</label></li>
						<li><input type="checkbox"
							id="b7bb35b9c6ca2aee2df08cf09d7016c2" value="631"><label
							for="b7bb35b9c6ca2aee2df08cf09d7016c2">전문 소믈리에가 있는</label></li>
						<li><input type="checkbox"
							id="7750ca3559e5b8e1f44210283368fc16" value="616"><label
							for="7750ca3559e5b8e1f44210283368fc16">베이비 시트가 준비되어 있는</label></li>
						<li><input type="checkbox"
							id="58d4d1e7b1e97b258c9ed0b37e02d087" value="615"><label
							for="58d4d1e7b1e97b258c9ed0b37e02d087">코르키지가 가능한</label></li>
						<li><input type="checkbox"
							id="abd815286ba1007abfbb8415b83ae2cf" value="632"><label
							for="abd815286ba1007abfbb8415b83ae2cf">24시간 영업을 하는</label></li>
					</ul>
					<button type="button" class="confirm_btn">확인</button>
				</div>
			</div>
			<!-- 필터 테이블 종류 -->
			<div class="section_table">
				<div class="filters_img"
					style="background-image: url(<c:url value="${path}/res/image/menubar/table.png"/>)"></div>
				<span>테이블 종류</span>
				<ul class="selected_list" id="table_sel_list"></ul>

				<div class="filters_popup">
					<div class="filter-bg"></div>
					<div class="popup_title">테이블 종류</div>
					<ul>
						<li><input type="checkbox" id="table_all"><label
							for="table_all">전체 선택</label></li>
						<li><input type="checkbox"
							id="5ef698cd9fe650923ea331c15af3b160" value="366"><label
							for="5ef698cd9fe650923ea331c15af3b160">홀 테이블</label></li>
						<li><input type="checkbox"
							id="24b16fede9a67c9251d3e7c7161c83ac" value="372"><label
							for="24b16fede9a67c9251d3e7c7161c83ac">바 테이블</label></li>
						<li><input type="checkbox"
							id="d709f38ef758b5066ef31b18039b8ce5" value="370"><label
							for="d709f38ef758b5066ef31b18039b8ce5">룸 테이블</label></li>
						<li><input type="checkbox"
							id="f61d6947467ccd3aa5af24db320235dd" value="375"><label
							for="f61d6947467ccd3aa5af24db320235dd">좌식 테이블</label></li>
					</ul>
					<button type="button" class="confirm_btn">확인</button>
				</div>
			</div>
			<!-- 필터 판매 주류 종류 -->
			<div class="section_liquor">
				<div class="filters_img"
					style="background-image: url(<c:url value="${path}/res/image/menubar/cocktail.png"/>)"></div>
				<span>판매 주류 종류</span>
				<ul class="selected_list" id="liquor_sel_list"></ul>

				<div class="filters_popup">
					<div class="filter-bg"></div>
					<div class="popup_title">판매 주류 종류</div>
					<ul>
						<li><input type="checkbox" id="liquor_all"><label
							for="liquor_all">전체 선택</label></li>
						<li><input type="checkbox"
							id="05049e90fa4f5039a8cadc6acbb4b2cc" value="367"><label
							for="05049e90fa4f5039a8cadc6acbb4b2cc">소주</label></li>
						<li><input type="checkbox"
							id="cf004fdc76fa1a4f25f62e0eb5261ca3" value="368"><label
							for="cf004fdc76fa1a4f25f62e0eb5261ca3">맥주</label></li>
						<li><input type="checkbox"
							id="ffd52f3c7e12435a724a8f30fddadd9c" value="373"><label
							for="ffd52f3c7e12435a724a8f30fddadd9c">전통주</label></li>
						<li><input type="checkbox"
							id="ad972f10e0800b49d76fed33a21f6698" value="374"><label
							for="ad972f10e0800b49d76fed33a21f6698">일본술</label></li>
						<li><input type="checkbox"
							id="142949df56ea8ae0be8b5306971900a4" value="376"><label
							for="142949df56ea8ae0be8b5306971900a4">양주</label></li>
						<li><input type="checkbox"
							id="0c74b7f78409a4022a2c4c5a5ca3ee19" value="369"><label
							for="0c74b7f78409a4022a2c4c5a5ca3ee19">와인</label></li>
						<li><input type="checkbox"
							id="d34ab169b70c9dcd35e62896010cd9ff" value="377"><label
							for="d34ab169b70c9dcd35e62896010cd9ff">고량주</label></li>
						<li><input type="checkbox"
							id="41f1f19176d383480afa65d325c06ed0" value="371"><label
							for="41f1f19176d383480afa65d325c06ed0">칵테일</label></li>
					</ul>
					<button type="button" class="confirm_btn">확인</button>
				</div>
			</div>
			<!-- 필터 주차 기능 -->
			<div class="section_parking">
				<div class="filters_img"
					style="background-image: url(<c:url value="${path}/res/image/menubar/car.png"/>)"></div>
				<input type="checkbox" id="parking_ckb" value="yes"> <label
					for="parking_ckb">주차 가능</label>
			</div>
		</div>
		<!-- 필터 레스토랑 검색 버튼 -->
		<button type="button" class="serch_btn">레스토랑 검색</button>
	</div>
</body>
</html>