<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>게시판 글쓰기 - 결과 화면</title>
</head>
<body>
<h3>글쓰기</h3>
<%
	String str = request.getParameter("RESULT");
	if(str.equals("Success"))
		out.println("저장되었습니다.");
	else
		out.println("파일에 데이터를 쓸 수 없습니다.");
%>
</body>
</html>