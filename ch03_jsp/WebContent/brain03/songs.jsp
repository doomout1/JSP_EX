<%@ page contentType="text/html; charset=EUC-KR"%>
<%@page import="java.io.*" %>
<%String filename=request.getParameter("FILE_NAME"); %>
<html>
<head><title>노래가사</title></head>
<body>
<h3>파일 이름 : <%=filename %></h3>
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
		out.println("파일이 존재하지 않습니다.");
	}
	catch(IOException ioe) {
		out.println("파일을 읽을수 없습니다.");
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