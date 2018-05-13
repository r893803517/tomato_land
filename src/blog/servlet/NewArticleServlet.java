package blog.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import blog.model.Article;
import blog.service.AdminService;

/**
 * Servlet implementation class NewArticleServlet
 */
@WebServlet("/NewArticleServlet")
public class NewArticleServlet extends HttpServlet {


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		if(session.getAttribute("user") == null) {
			return;
		}
		AdminService as = AdminService.getInstance();
		Article result = as.addArticle(request);		
		request.setAttribute("article", result);
		
		request.getRequestDispatcher("/admin/result.jsp").forward(request, response);
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
