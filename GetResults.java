package com.student;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/GetResults")
public class GetResults extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String id = request.getParameter("stID");
	
		
		try {
			
			List<student> stDetails = StudentDBUtil.getStudentDetails(id);
			request.setAttribute("stDetails", stDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("exam_results.jsp");
			dis.forward(request,response);
		
			}catch(Exception e) {
				e.printStackTrace();
			}

	}
}
