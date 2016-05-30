package com.sdzee.servlets;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import com.sdzee.AbsenceBdd;
import com.sdzee.bean.copy.AbsenceBean;
/**
 * Servlet implementation class Servlet1
 */
@WebServlet("/Servlet1")
public class AbsenceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    /**
     * Default constructor. 
     */
    public AbsenceServlet() {
       super();
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		AbsenceBdd listabs=new AbsenceBdd();
		request.setAttribute("abs",listabs.recupererAbsence());
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/Absence.jsp").forward(request,response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		AbsenceBean absencebean = new AbsenceBean();
		absencebean.setNom(request.getParameter("nom"));
		absencebean.setPrenom(request.getParameter("prenom"));
		
		AbsenceBdd absencebdd = new AbsenceBdd();
		request.setAttribute("absence", absencebdd.recupererAbsence() );
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/Absence.jsp").forward(request,response);
	}
}