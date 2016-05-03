<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	String str1=request.getParameter("num1");
	String str2=request.getParameter("num2");
	int num1=Integer.parseInt(str1);
	int num2=Integer.parseInt(str2);
	request.setAttribute("sum", new Integer(num1+num2));
	request.setAttribute("difference", new Integer(num1-num2));
	request.setAttribute("product", new Integer(num1*num2));
	request.setAttribute("quotient", new Integer(num1/num2));
	RequestDispatcher dispatcher=request.getRequestDispatcher("FourRuelsResult.jsp");
	dispatcher.forward(request, response);
%>
</body>
</html>