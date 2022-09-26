package booking;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DBExpert;

@WebServlet("/bookingDelete.do")
public class BookingDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public BookingDeleteServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("ID");
		String no = request.getParameter("NO");
		DBExpert dbe = new DBExpert();
		boolean r = dbe.deleteBooking(id, no);
		if(r) {//삭제가 정상 처리된 경우
			response.sendRedirect("deleteResult.jsp?R=Y");
		}else {//삭제가 처리되지 않은 경우
			response.sendRedirect("deleteResult.jsp?R=N");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
