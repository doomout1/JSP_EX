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
			gender="남";
		else
			gender="여";
		String iNotice = request.getParameter("INOTICE");
		String cNotice = request.getParameter("CNOTICE");
		String dNotice = request.getParameter("DNOTICE");
		String job = request.getParameter("JOB");
		response.setContentType("text/html;charset=euc-kr");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head><title>개인 정보 입력 - 결과화면</title></head>");
		out.println("<body>");
		out.println("<h2>개인 정보 입력</h2>");
		out.printf("이름: %s <br>", name);
		out.printf("아이디: %s <br>", id);
		out.printf("암호: %s <br>", password);
		out.printf("성별: %s <br>", gender);
		out.printf("공지 메일: %s <br>", noticeToHangul(iNotice));
		out.printf("광고 메일: %s <br>", noticeToHangul(cNotice));
		out.printf("배송 확인 메일: %s <br>", noticeToHangul(dNotice));
		out.printf("직업: %s <br>", job);
		out.println("</body>");
		out.println("</html>");
	}
	private String noticeToHangul(String notice){
		if(notice == null)
			return "받지 않음";
		else if(notice.equals("on"))
			return "받음";
		else
			return notice;
	}
}
