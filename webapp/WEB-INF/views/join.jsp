<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		//인코딩
		request.setCharacterEncoding("UTF-8");
		//회원가입 시 입력한 값들 셋팅 가져옴
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String bir_yeer = request.getParameter("bir_yeer");
		String bir_mon = request.getParameter("bir_mon");
		String bir_day = request.getParameter("bir_day");
		String gender = request.getParameter("gender");
		String phone = request.getParameter("phone");

		if (request.getParameter("join_type").equals("1")) { //일반 회원가입
			//DB 접속 후 값 입력

			
			
			
			// 메인 페이지로 돌아감
			out.println("<script>if(!alert('회원가입이 완료되었습니다!')) document.location = 'main';</script>");
			
		} else { //사업자 회원가입
			//사업자 정보 가져옴
			String buisness_number = request.getParameter("buisness_number");
			String buisness_name = request.getParameter("buisness_name");
			String buisness_address = request.getParameter("buisness_address");
			String buisness_address_etc = request.getParameter("buisness_address_etc");
			String buisness_food_type = request.getParameter("buisness_food_type");
			//DB 접속 후 값 입력
			
			
			
			// 메인 페이지로 돌아감
			out.println("<script>if(!alert('관리자 승인 후 회원가입이 완료됩니다!')) document.location = 'main';</script>");
		}
	%>

</body>
</html>