<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>사칙연산</title>
</head>
<body>
	입력된 수 : <%=request.getParameter("num1") %>,<%=request.getParameter("num2") %><br><br>
	덧셈의 결과는? <%= request.getAttribute("sum") %><br>
	뺄셈의 결과는? <%= request.getAttribute("difference") %><br>
	곱셈의 결과는? <%= request.getAttribute("product") %><br>
	나눗셈의 결과는? <%= request.getAttribute("quotient") %><br>
</body>
</html>