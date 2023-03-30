package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.helper.HelperClass;
import com.todo.Note;


public class AddNotes extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public AddNotes() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try
		{
			String title=request.getParameter("t1");
			String cont=request.getParameter("t2");
			
			Note notes=new Note(title, cont, new Date());
			
			Session session=HelperClass.getFactory().openSession();
			
			Transaction tr=session.beginTransaction();
			
			session.save(notes);
			
			tr.commit();
			
			session.close();
			request.setAttribute("c_id",notes.getId());
			RequestDispatcher req=request.getRequestDispatcher("index.jsp");
			req.forward(request, response);
			
			//PrintWriter out=response.getWriter();
			
			//out.print("<div style='text-align:center;'><h1>Note Added Successfully</h1></div>");
			//out.print("<div style='text-align:center;'><h1><a href='all_notes.jsp'>View All Notes</a></h1></div>");
		}
		catch (Exception e) {
			// TODO: handle exception
			
			e.printStackTrace();
		}
		
		
	}

}
