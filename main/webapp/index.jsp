<jsp:useBean class="beans.FormBean" id="form" scope="session" />
<jsp:setProperty name="form" property="tischNr" />
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="de">
<head>
    <title>Bestellformular</title>
      	<meta charset="UTF-8">
  		<meta name="viewport" content="width=device-width, initial-scale=1">
  		<link href="css/style.css" rel="stylesheet">
</head>
<body>
<!--Wenn eine Bestellung aufgenommen werden soll, wird dieser Programmteil aufgerufen-->
<%
String button = request.getParameter("bestellen");
if (button != null) { %>

	  <h1>Bestellung f&uuml;r Tisch <jsp:getProperty name='form' property='tischNr' />:</h1>

	  <form action="speicherungBestellung.jsp">
	    <h2>Getr&auml;nke ausw&auml;hlen</h2>
	    <div class="Getränke">
	    <table>
	      <tr>
	        <th>Anzahl</th>
	        <th>Getr&auml;nk</th>
	        <th>Gr&ouml;ße</th>
	        <th>Einzelpreis</th>
	      </tr>
	      <tr>
	        <td><input type="number" name="anzahlCola" value="<jsp:getProperty name='form' property='anzahlCola' />"min="0"></td>
	        <td>Cola</td>
	        <td>0,33 l</td>
	        <td>3,90 &euro;</td>
	      </tr>
	      <tr>
	        <td><input type="number" name="anzahlFanta" value="<jsp:getProperty name='form' property='anzahlFanta' />"min="0"></td>
	        <td>Fanta</td>
	        <td>0,33 l</td>
	        <td>3,90 &euro;</td>
	      </tr>
	      <tr>
	        <td><input type="number" name="anzahlSprite" value="<jsp:getProperty name='form' property='anzahlSprite' />"
	            min="0"></td>
	        <td>Sprite</td>
	        <td>0,4 l</td>
	        <td>4,40 &euro;</td>
	      </tr>
	      <tr>
	        <td><input type="number" name="anzahlWasser" value="<jsp:getProperty name='form' property='anzahlWasser' />"
	            min="0"></td>
	        <td>Wasser</td>
	        <td>0,2 l</td>
	        <td>1,80 &euro;</td>
	      </tr>
	      <tr>
	        <td><input type="number" name="anzahlApfel" value="<jsp:getProperty name='form' property='anzahlApfel' />"
	            min="0"></td>
	        <td>Apfelsaftschorle</td>
	        <td>0,4 l</td>
	        <td>4,40 &euro;</td>
	      </tr>
	    </table></div><br>

      <h2>Essen ausw&auml;hlen</h2>
      <div class="Essen">
      <table>
      <tr>
        <th>Anzahl</th>
        <th style="width: 300px;">Essen</th>
        <th>Einzelpreis</th>
      </tr>
      <tr>
        <td><input type="number" name="anzahlSchnitzel"
            value="<jsp:getProperty name='form' property='anzahlSchnitzel' />" min="0"></td>
        <td>Schnitzel mit Pommes</td>
        <td>18,90 &euro;</td>
      </tr>
      <tr>
        <td><input type="number" name="anzahlKaesespaetzle"
            value="<jsp:getProperty name='form' property='anzahlKaesespaetzle' />" min="0"></td>
        <td>K&auml;sesp&auml;tzle</td>
        <td>14,50 &euro;</td>
      </tr>
      <tr>
        <td><input type="number" name="anzahlSteak"
            value="<jsp:getProperty name='form' property='anzahlSteak' />" min="0"></td>
        <td>Steak</td>
        <td>15,90 &euro;</td>
      </tr>
      <tr>
        <td><input type="number" name="anzahlWildeKartoffeln" value="<jsp:getProperty name='form' property='anzahlWildeKartoffeln' />"
            min="0"></td>
        <td>Wilde Kartoffeln</td>
        <td>5,00 &euro;</td>
      </tr>
      <tr>
        <td><input type="number" name="anzahlPommes" value="<jsp:getProperty name='form' property='anzahlPommes' />"
            min="0"></td>
        <td>Pommes</td>
        <td>4,50 &euro;</td>
      </tr>
    </table><br>
    <button type="submit">Bestellung absenden</button>
    <a href="index.html"><button type="button">Bestellung abbrechen</button></a>
	</div>
 </form>
	    
	    <%
} 
/*Für die Rechnungserstellung wird der folgende Teil aufgerufen  */
else {
    button = request.getParameter("rechnung");
    if (button != null) { %>
    	<h1>Rechnungen erstellen f&uuml;r Tisch <jsp:getProperty name='form' property='tischNr' />:
      </h1>

<div class="Rechnung">
<form action="Berechnen" method="post">
<table>
	<tr>
		<th>Getr&auml;nke</th>
		<th>Gesamtanzahl</th>
		<th>zu zahlende Menge</th>
		<th>Preis</th>
	</tr>
  	<tr>
  		<td><input type="checkbox" id="cola" name="cola" value="3.9"> Cola</td>
  		<td><jsp:getProperty name="form" property="anzahlCola" /></td>
  		<td><input type="number" id=acola name="acola" min="0" max=<jsp:getProperty name="form" property="anzahlCola"/>></td>
  		<td>3,90 &euro;</td>
  	</tr>
  	<tr>
  		<td><input type="checkbox" id="fanta" name="fanta" value="3.9"> Fanta</td>
  		<td><jsp:getProperty name="form" property="anzahlFanta" /></td>
  		<td><input type="number" id=fanta name="afanta" min="0" max=<jsp:getProperty name="form" property="anzahlFanta"/>></td>
  		<td>3,90 &euro;</td>
  	</tr>
  	<tr>
  		<td><input type="checkbox" id="sprite" name="sprite" value="4.4"> Sprite</td>
  		<td><jsp:getProperty name="form" property="anzahlSprite" /></td>
  		<td><input type="number" id=sprite name="asprite" min="0" max=<jsp:getProperty name="form" property="anzahlSprite"/>></td>
  		<td>4,40 &euro;</td>
  	</tr>
  	<tr>
  		<td><input type="checkbox" id="wasser" name="wasser" value="1.8"> Wasser</td>
  		<td><jsp:getProperty name="form" property="anzahlWasser" /></td>
  		<td><input type="number" id=wasser name="awasser"  min="0" max=<jsp:getProperty name="form" property="anzahlWasser"/>></td>
  		<td>1,80 &euro;</td>
  	</tr>
  	<tr>
  		<td><input type="checkbox" id="apfel" name="apfel" value="4.4"> Apfelschorle</td>
  		<td><jsp:getProperty name="form" property="anzahlApfel" /></td>
  		<td><input type="number" id=apfel name="aapfel"  min="0" max=<jsp:getProperty name="form" property="anzahlApfel"/>></td>
  		<td>4,40 &euro;</td>
  	</tr>
  	<tr>
  		<td>-------------------------------</td>
  		<td>---------------------------------</td>
  		<td>-----------------------------</td>
  		<td>-------------</td>
  	</tr>
  	<tr>
  		<td><input type="checkbox" id="schnitzel" name="schnitzel" value="18.9"> Schnitzel</td>
  		<td><jsp:getProperty name="form" property="anzahlSchnitzel" /></td>
  		<td><input type="number" id=schnitzel name="aschnitzel"  min="0" max=<jsp:getProperty name="form" property="anzahlSchnitzel"/>></td>
  		<td>18,90 &euro;</td>
  	</tr>
  	<tr>
  		<td><input type="checkbox" id="käse" name="käse" value="14.5"> K&auml;sesp&auml;tzle</td>
  		<td><jsp:getProperty name="form" property="anzahlKaesespaetzle" /></td>
  		<td><input type="number" id=käse name="akäse"  min="0" max=<jsp:getProperty name="form" property="anzahlKaesespaetzle"/>></td>
  		<td>14,50 &euro;</td>
  	</tr>
  	<tr>
  		<td><input type="checkbox" id="steak" name="steak" value="15.9"> Steak</td>
  		<td><jsp:getProperty name="form" property="anzahlSteak" /></td>
  		<td><input type="number" id=steak name="asteak"  min="0" max=<jsp:getProperty name="form" property="anzahlSteak"/>></td>
  		<td>15,90 &euro;</td>
  	</tr>
  	<tr>
  		<td><input type="checkbox" id="wildeKartoffeln" name="wildeKartoffeln" value="5.0"> Wilde Kartoffeln</td>
  		<td><jsp:getProperty name="form" property="anzahlWildeKartoffeln" /></td>
  		<td><input type="number" id=wildekartoffeln name="awildeKartoffeln"  min="0" max=<jsp:getProperty name="form" property="anzahlWildeKartoffeln"/>></td>
  		<td>5,00 &euro;</td>
  	</tr>
  	<tr>
  		<td><input type="checkbox" id="pommes" name="pommes" value="4.5"> Pommes</td>
  		<td><jsp:getProperty name="form" property="anzahlPommes" /></td>
  		<td><input type="number" id=pommes name="apommes"  min="0" max=<jsp:getProperty name="form" property="anzahlPommes"/>></td>
  		<td>4,50 &euro;</td>
  	</tr>
</table>
<br>
<button type="submit" name="bar" value="bar">Bar</button>
<button type="submit" name="karte" value="karte">Karte</button>
<a href="index.html"><button type="button">Vorgang abbrechen</button></a>

</form>
</div>
<br><br>



          <% }


    }
%>
</body>
</html>
