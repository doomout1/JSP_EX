import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class BBSPostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, 
			HttpServletResponse response) 
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("euc-kr");
		
		String name = request.getParameter("name");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		response.setContentType("text/html;charset=euc-kr");
		
		PrintWriter out = response.getWriter();
		
		out.println("<html>");
		out.println("<head><title>�Խ��� �۾���-���ȭ��</title></head>");
		out.println("<body>");
		out.printf("�̸�: %s <br>", name);
		out.printf("����: %s <br>", title);
		out.println("------------------------<br>");
		out.printf("<pre>%s</pre>", content);
		out.println("------------------------<br>");
		out.println("����Ǿ����ϴ�.");
		out.println("</body>");
		out.println("</html>");
	}

}
