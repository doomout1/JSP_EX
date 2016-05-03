<%@ page contentType="text/html; charset=EUC-KR"%>
 <%@page import="java.io.File" %>
 <%
 	String dirPath=application.getRealPath("/brain03/WEB-INF/songs/");
 	File dir = new File(dirPath);
 	String filenames[]=dir.list();
 %>

<html>
<head><title>노래목록</title></head>
<body>
<h3>노래 파일 목록</h3>
<% for (String filename : filenames) { %>
	<a href='songs.jsp?FILE_NAME=<%=filename%>'>
		<%=filename %>
	</a><br>
<%} %>
</body>
</html>