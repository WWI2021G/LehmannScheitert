package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

import beans.FormBean;

/**
 * Servlet implementation class BerechnenKarteBezahlen
 */
@WebServlet("/BerechnenKarteBezahlt")
public class BerechnenKarteBezahlen extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		FormBean myBean = (FormBean) session.getAttribute("form");
		PrintWriter out = response.getWriter();
		String rabatt = request.getParameter("rabatt");
		float sum = (float) session.getAttribute("sum");
		out.println("<html>");
		out.println("<head>");
	    out.println("<link rel=\"stylesheet\" type=\"text/css\" href=\"css/style.css\">");
	    out.println("</head>");
	    out.println("<body>");
	    out.println("<h1> Rechnung f&uuml;r Tisch " + myBean.getTischNr() + "</h1>");
		
		if(rabatt.equals("Rabatt1")) {
			sum = sum * 0.9f;
		}
		if(rabatt.equals("Rabatt2")) {
			sum = sum * 0.8f;
		}
		if(rabatt.equals("Rabatt3")) {
			sum = sum * 0.7f;
		}
		else {
			sum = sum;
		}
		
		out.printf("%.2f", sum, "&euro;");
		out.println("<br>");
		out.println("Bitte mit Kartenleseger&auml;t verbinden");
		out.println("<br>");
		out.println("<a href=\"index.html\"><button type=\"submit\">Transaktion beenden</a></button>");
	}
}
