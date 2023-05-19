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
 * Servlet implementation class BerechnenBarBezahlen
 */
@WebServlet("/BerechnenBarBezahlt")
public class BerechnenBarBezahlen extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		FormBean myBean = (FormBean) session.getAttribute("form");
		PrintWriter out = response.getWriter();
		String rabatt = request.getParameter("rabatt");
//		String gegeben = request.getParameter("gegeben");
		float sum = (float) session.getAttribute("sum");
		float gegeben = Float.parseFloat(request.getParameter("gegeben"));
//		float gegeben = (float) session.getAttribute("gegeben");
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
		
		float rückgeld = gegeben - sum;
		out.println("R&uuml;ckgeld: ");
		out.printf("%.2f", rückgeld, "&euro;");
		out.println("<br>");
		out.println("<a href=\"index.html\"><button type=\"submit\">Transaktion beenden</a></button>");
		

		
	}
}
