package com.Servlet;

import java.io.IOException;

import com.DAO.PostDAO;
import com.Db.DBConnect;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/NoteEditServlet")
public class NoteEditServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			Integer noteid=Integer.parseInt(request.getParameter("noteid"));
			String title=request.getParameter("title");
			String content=request.getParameter("content");
			PostDAO dao=new PostDAO(DBConnect.getConn());
			boolean f=dao.PostUpdate(noteid, title, content);
			HttpSession session=request.getSession();
			if(f) {
				System.out.println("data update successfully");
				
				session.setAttribute("updateMsg", "Note updated successfully.");
				response.sendRedirect("showNotes.jsp");
			}
			else {
				System.out.println("data not updated");
				session.setAttribute("noupdateMsg", "Data not updated. Crossing limits of database");
				response.sendRedirect("showNotes.jsp");
			}
		}
		catch(Exception e) {
			 e.printStackTrace();
		}
		
	}

}
