<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�Խ��� �۾��� - ��� ȭ��</title>
</head>
<body>
<h3>�۾���</h3>
<%
	String str = request.getParameter("RESULT");
	if(str.equals("Success"))
		out.println("����Ǿ����ϴ�.");
	else
		out.println("���Ͽ� �����͸� �� �� �����ϴ�.");
%>
</body>
</html>