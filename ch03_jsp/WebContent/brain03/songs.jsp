<%@ page contentType="text/html; charset=EUC-KR"%>
<%@page import="java.io.*" %>
<%String filename=request.getParameter("FILE_NAME"); %>
<html>
<head><title>�뷡����</title></head>
<body>
<h3>���� �̸� : <%=filename %></h3>
<%
	BufferedReader reader = null;
	try	{
		String filePath=application.getRealPath("/brain03/WEB-INF/songs/"+filename);
		reader=new BufferedReader(new FileReader(filePath));
		while(true){
			String str=reader.readLine();
			if(str==null)
				break;
			out.println(str+"<br>");
		}
	}
	catch(FileNotFoundException fnfe) {
		out.println("������ �������� �ʽ��ϴ�.");
	}
	catch(IOException ioe) {
		out.println("������ ������ �����ϴ�.");
	}
	finally {
		try{
			reader.close();
		}
		catch(Exception e){
		}
	}
%>
</body>
</html>