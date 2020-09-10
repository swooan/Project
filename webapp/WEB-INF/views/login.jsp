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
        int check = 1;
        String email= request.getParameter("email");
        if(check == 1)    // 로그인 성공
        {
            // 세션에 현재 이메일(아이디) 세팅
            session.setAttribute("sessionID", email);
            
        if(request.getParameter("login_type").equals("1")){ //home에서 로그인 했을경우
        // 메인 페이지로 돌아감
        response.sendRedirect("main");
        } else{	//나머지의 경우
		// 이전 페이지로 돌아감
         response.sendRedirect((String)request.getHeader("REFERER"));
        }
        }
    %>
</body>
</html>