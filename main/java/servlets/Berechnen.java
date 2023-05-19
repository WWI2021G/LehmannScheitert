package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import beans.FormBean;

/**
 * Servlet implementation class Berechnen
 */
@WebServlet("/Berechnen")
public class Berechnen extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException {
		String button = request.getParameter("bar");
		if(button != null) { 
			RequestDispatcher dispatcher = request.getRequestDispatcher("/BerechnenBar");
			dispatcher.forward(request, response);
		}
		
		else {
			button = request.getParameter("karte");
			if(button != null) {
				RequestDispatcher dispatcher = request.getRequestDispatcher("/BerechnenKarte");
				dispatcher.forward(request, response);
			}
		}
		
	}
}