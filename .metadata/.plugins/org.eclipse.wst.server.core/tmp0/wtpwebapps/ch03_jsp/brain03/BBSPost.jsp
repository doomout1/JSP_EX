<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@page import="java.io.*, java.util.Date" %>
<html>
<head><title>�Խ��� �۾��� - ��� ȭ��</title></head>
<body>
<h2>�۾���</h2>
<%
	request.setCharacterEncoding("euc-kr");
	String name = request.getParameter("name");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	Date date=new Date();
	Long time=date.getTime();
	String filename=time + ".txt";
	String result;
	PrintWriter writer = null;
	try {
		String filePath=application.getRealPath("/brain03/WEB-INF/bbs"+filename);
		writer=new PrintWriter(filePath);
		writer.printf("����: %s %n", title);
		writer.printf("�۾���: %s %n", name);
		writer.println(content);
		result = "Success";
	}
	catch(IOException ioe){
		result = "Fail";
	}
	finally {
		try{
			writer.close();
		}
		catch(Exception e){
		}
	}
	response.sendRedirect("BBSPostResult.jsp?RESULT="+result);
%>
</body>
</html>