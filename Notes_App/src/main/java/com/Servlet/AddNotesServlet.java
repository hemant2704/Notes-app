package com.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import com.DAO.PostDAO;
import com.DAO.UserDAO;
import com.Db.DBConnect;
import com.User.UserDetails;
import com.User.Post;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/AddNotesServlet")
public class AddNotesServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String title=request.getParameter("title");
		String content=request.getParameter("content");
		int uid=Integer.parseInt(request.getParameter("uid"));
		
		PostDAO dao=new PostDAO(DBConnect.getConn());
		
		boolean f=dao.AddNotes(title, content, uid);
		if(f)
		{
			System.out.println("data insert successfully");
			response.sendRedirect("showNotes.jsp");
		}
		else System.out.println("data not inserted");
				
	}

}
