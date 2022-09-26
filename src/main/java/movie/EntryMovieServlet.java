package movie;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DBExpert;
import model.EntryMovie;

@WebServlet("/entryMovie.do")
public class EntryMovieServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EntryMovieServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		String no = request.getParameter("NO");
		String title = request.getParameter("TITLE");
		String date = request.getParameter("DATE");
		String start = request.getParameter("START");
		String end = request.getParameter("END");
		//영화 등록 DTO(EntryMovie)에 위의 데이터를 저장한다.
		EntryMovie em = new EntryMovie();
		em.setId(no);
		em.setTitle(title);
		em.setOpen(date);
		em.setStart(start);
		em.setEnd(end);
		DBExpert dbe = new DBExpert();
		boolean result = dbe.putMovie(em);
		if(result) {
			response.sendRedirect("entryMovieResult.jsp?R=Y");
		}else {
			response.sendRedirect("entryMovieResult.jsp?R=N");
		}
	}
}
