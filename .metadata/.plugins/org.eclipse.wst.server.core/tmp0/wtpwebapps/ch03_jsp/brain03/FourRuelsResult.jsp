<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>��Ģ����</title>
</head>
<body>
	�Էµ� �� : <%=request.getParameter("num1") %>,<%=request.getParameter("num2") %><br><br>
	������ �����? <%= request.getAttribute("sum") %><br>
	������ �����? <%= request.getAttribute("difference") %><br>
	������ �����? <%= request.getAttribute("product") %><br>
	�������� �����? <%= request.getAttribute("quotient") %><br>
</body>
</html>