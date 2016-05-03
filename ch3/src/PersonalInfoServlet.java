import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;


public class PersonalInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name=request.getParameter("NAME");
		String id=request.getParameter("ID");
		String password=request.getParameter("PASSWORD");
		String gender=request.getParameter("GENDER");
		if(gender.equals("MALE"))
			gender="��";
		else
			gender="��";
		String iNotice = request.getParameter("INOTICE");
		String cNotice = request.getParameter("CNOTICE");
		String dNotice = request.getParameter("DNOTICE");
		String job = request.getParameter("JOB");
		response.setContentType("text/html;charset=euc-kr");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head><title>���� ���� �Է� - ���ȭ��</title></head>");
		out.println("<body>");
		out.println("<h2>���� ���� �Է�</h2>");
		out.printf("�̸�: %s <br>", name);
		out.printf("���̵�: %s <br>", id);
		out.printf("��ȣ: %s <br>", password);
		out.printf("����: %s <br>", gender);
		out.printf("���� ����: %s <br>", noticeToHangul(iNotice));
		out.printf("���� ����: %s <br>", noticeToHangul(cNotice));
		out.printf("��� Ȯ�� ����: %s <br>", noticeToHangul(dNotice));
		out.printf("����: %s <br>", job);
		out.println("</body>");
		out.println("</html>");
	}
	private String noticeToHangul(String notice){
		if(notice == null)
			return "���� ����";
		else if(notice.equals("on"))
			return "����";
		else
			return notice;
	}
}
