<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
  <%
  	int total = 0;
  	for(int cnt = 1; cnt<=100; cnt++)
  		total += cnt;
  %>
  1+2+3+...+100 = <%= total %>
</body>
</html>