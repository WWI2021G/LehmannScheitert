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
 * Servlet implementation class BerechnenBar
 */
@WebServlet("/BerechnenKarte")
public class BerechnenKarte extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		FormBean myBean = (FormBean) session.getAttribute("form");
		PrintWriter out = response.getWriter();
		
		String checkboxValue1 = request.getParameter("cola");
		String checkboxValue2 = request.getParameter("fanta");
		String checkboxValue3 = request.getParameter("sprite");
		String checkboxValue4 = request.getParameter("wasser");
		String checkboxValue5 = request.getParameter("apfel");
		String checkboxValue6 = request.getParameter("schnitzel");
		String checkboxValue7 = request.getParameter("käse");
		String checkboxValue8 = request.getParameter("steak");
		String checkboxValue9 = request.getParameter("wildeKartoffeln");
		String checkboxValue10 = request.getParameter("pommes");
		
		
		float sum = 0;
	    out.println("<html>");
	    out.println("<head>");
	    out.println("<title>Rechnungserstellung</title>");
	    out.println("<link rel=\"stylesheet\" type=\"text/css\" href=\"css/style.css\">");
	    out.println("</head>");
	    out.println("<body>");
	    out.println("<h1> Rechnung f&uuml;r Tisch " + myBean.getTischNr() + "</h1>");
	    out.println("<form action = BerechnenKarteBezahlt method=post>");
	    out.println("<div class=Berechnung>");



		if(checkboxValue1 != null) {
			float cola 		= Float.parseFloat(request.getParameter("cola"));
			float acola		= Float.parseFloat(request.getParameter("acola"));
			float gcola		= cola*acola;
			sum += gcola;
			out.println("<table>");
			out.println("<tr>");
			out.println("<td>Cola</td>");
			out.println("<td>");
			out.printf("%.2f", gcola);
			out.println("</td>");
			out.println("</tr>");

			
		}
		
		if(checkboxValue2 != null) {
			float fanta 	= Float.parseFloat(request.getParameter("fanta"));
			float afanta	= Float.parseFloat(request.getParameter("afanta"));
			float gfanta	= fanta*afanta;
			sum += gfanta;
			out.println("<table>");
			out.println("<tr>");
			out.println("<td>Fanta</td>");
			out.println("<td>");
			out.printf("%.2f", gfanta);
			out.println("</td>");
			out.println("</tr>");
		}
		
		if(checkboxValue3 != null) {
			float sprite	= Float.parseFloat(request.getParameter("sprite"));
			float asprite	= Float.parseFloat(request.getParameter("asprite"));
			float gsprite	= sprite*asprite;
			sum += gsprite;
			out.println("<table>");
			out.println("<tr>");
			out.println("<td>Sprite</td>");
			out.println("<td>");
			out.printf("%.2f", gsprite);
			out.println("</td>");
			out.println("</tr>");
		}
		
		if(checkboxValue4 != null) {
			float wasser	= Float.parseFloat(request.getParameter("wasser"));
			float awasser	= Float.parseFloat(request.getParameter("awasser"));
			float gwasser	= wasser*awasser;
			sum += gwasser;
			out.println("<table>");
			out.println("<tr>");
			out.println("<td>Wasser</td>");
			out.println("<td>");
			out.printf("%.2f", gwasser);
			out.println("</td>");
			out.println("</tr>");
		}
		
		if(checkboxValue5 != null) {
			float apfel		= Float.parseFloat(request.getParameter("apfel"));
			float aapfel	= Float.parseFloat(request.getParameter("aapfel"));
			float gapfel	= apfel*aapfel;
			sum += gapfel;
			out.println("<table>");
			out.println("<tr>");
			out.println("<td>Apfelsaftschorle</td>");
			out.println("<td>");
			out.printf("%.2f", gapfel);
			out.println("</td>");
			out.println("</tr>");
		}
		
		if(checkboxValue6 != null) {
			float schnitzel		= Float.parseFloat(request.getParameter("schnitzel"));
			float aschnitzel	= Float.parseFloat(request.getParameter("aschnitzel"));
			float gschnitzel	= schnitzel*aschnitzel;
			sum += gschnitzel;
			out.println("<table>");
			out.println("<tr>");
			out.println("<td>Schnitzel</td>");
			out.println("<td>");
			out.printf("%.2f", gschnitzel);
			out.println("</td>");
			out.println("</tr>");
		}
		
		if(checkboxValue7 != null) {
			float käse		= Float.parseFloat(request.getParameter("käse"));
			float akäse		= Float.parseFloat(request.getParameter("akäse"));
			float gkäse		= käse*akäse;
			sum += gkäse;
			out.println("<table>");
			out.println("<tr>");
			out.println("<td>K&auml;sesp&auml;tzle</td>");
			out.println("<td>");
			out.printf("%.2f", gkäse);
			out.println("</td>");
			out.println("</tr>");
		}
		
		if(checkboxValue8 != null) {
			float steak		= Float.parseFloat(request.getParameter("steak"));
			float asteak	= Float.parseFloat(request.getParameter("asteak"));
			float gsteak	= steak*asteak;
			sum += gsteak;
			out.println("<table>");
			out.println("<tr>");
			out.println("<td>Steak</td>");
			out.println("<td>");
			out.printf("%.2f", gsteak);
			out.println("</td>");
			out.println("</tr>");
		}
		
		if(checkboxValue9 != null) {
			float wildeKartoffeln 	= Float.parseFloat(request.getParameter("wildeKartoffeln"));
			float awildeKartoffeln	= Float.parseFloat(request.getParameter("awildeKartoffeln"));
			float gwildeKartoffeln	= wildeKartoffeln*awildeKartoffeln;
			sum += gwildeKartoffeln;
			out.println("<table>");
			out.println("<tr>");
			out.println("<td>Wilde Kartoffeln</td>");
			out.println("<td>");
			out.printf("%.2f", gwildeKartoffeln);
			out.println("</td>");
			out.println("</tr>");
		}
		
		if(checkboxValue10 != null) {
			float pommes	= Float.parseFloat(request.getParameter("pommes"));
			float apommes	= Float.parseFloat(request.getParameter("apommes"));
			float gpommes	= pommes*apommes;
			sum += gpommes;
			out.println("<table>");
			out.println("<tr>");
			out.println("<td>Pommes</td>");
			out.println("<td>");
			out.printf("%.2f", gpommes);
			out.println("</td>");
			out.println("</tr>");
		}
		out.println("<table>");
		out.println("<tr>");
		out.println("<td>-----------</td>");
		out.println("</tr>");
		out.println("<tr>");
		out.println("<td>Summe: </td>");
		out.println("<td>");
		out.printf("%.2f", sum, "&euro;");
		out.println("</td>");
		out.println("</tr>");
		out.println("</table>");
		out.println("<br>");
		out.println("<input type=\"text\" name=\"rabatt\" placeholder=\"Rabattcode\">");
		
		out.println("<button type=\"submit\">Berechnen</button>");
		out.println("</form");
		
		session.setAttribute("sum", sum);
			
	}
}
