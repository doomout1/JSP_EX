<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>오늘의 메뉴</title>
</head>
<body>
<h3>오늘의 메뉴</h3>
- 짜장면 <br>
- 볶음밥 <br>
- 짬뽕 <br>
<%
	out.flush();
	RequestDispatcher dispatchar = request.getRequestDispatcher("Now.jsp");
	dispatchar.include(request, response);
%>
</body>
</html>