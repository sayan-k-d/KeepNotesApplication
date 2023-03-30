package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.helper.HelperClass;
import com.todo.Note;

public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public UpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try 
		{
			int id=Integer.parseInt(request.getParameter("note_id"));
			String up_title=request.getParameter("u1");
			String up_note=request.getParameter("u2");
			Session s= HelperClass.getFactory().openSession();
			Transaction tr=s.beginTransaction();
			Note note=s.get(Note.class, id);
			note.setTitle(up_title);
			note.setContent(up_note);
			s.update(note);
			tr.commit();
			
			s.close();
			request.setAttribute("n_id",id);
			RequestDispatcher req=request.getRequestDispatcher("all_notes.jsp");
			req.forward(request, response);
		} 
		catch (Exception e) 
		{
			// TODO: handle exception
			e.printStackTrace();
		}
	}

}
