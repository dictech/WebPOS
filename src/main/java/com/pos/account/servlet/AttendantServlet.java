package com.pos.account.servlet;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.pos.account.model.Attendance;
import com.pos.account.model.AttendanceDAO;
import com.pos.account.model.Attendant;
import com.pos.account.model.AttendantDAO;

/**
 * Servlet implementation class AttendantServlet
 */
public class AttendantServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public AttendantServlet() {
        super();
        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		  try {
		   
		        ListStaffs(request, response);
		        ListAttendance(request, response);
		        
		  }catch(Exception e)
		  {e.getMessage();}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	
	
	
	private void ListAttendance(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
        
        List<Attendance>getAllAttendance = AttendanceDAO.getAllAttendance();
        request.setAttribute("attendance", getAllAttendance);
        RequestDispatcher dispatch = request.getRequestDispatcher("AttendantDetails.jsp");
        dispatch.forward(request, response);
	}


	// calls for all the attendants .
	private void ListStaffs(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
        List<Attendant> getAllStaffs = AttendantDAO.getAllAttendants();
        request.setAttribute("attendants", getAllStaffs);
        RequestDispatcher dispatch = request.getRequestDispatcher("AttendantDetails.jsp");
        dispatch.forward(request, response);
	}




}
