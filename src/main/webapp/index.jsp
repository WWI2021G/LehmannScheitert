<jsp:useBean class="beans.FormBean" id="form" scope="session" />
<jsp:setProperty name="form" property="tischNr" />
<!DOCTYPE html>
<html lang="de">
<head>
    <title>Bestellformular</title>
      <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="css/style.css" rel="stylesheet">
</head>
<body>
<%
String button = request.getParameter("bestellen");
if (button != null) { %>
	<body>

	  <h1>Bestellung f&uuml;r Tisch <jsp:getProperty name='form' property='tischNr' />:</h1>

	  <form action="UmleitungBestellung.jsp">
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
	        <td><input type="number" name="anzahlCola" value="<jsp:getProperty name='form' property='anzahlCola' />"
	            min="0"></td>
	        <td>Cola</td>
	        <td>0,33 l</td>
	        <td>3,90&euro;</td>
	      </tr>
	      <tr>
	        <td><input type="number" name="anzahlFanta" value="<jsp:getProperty name='form' property='anzahlFanta' />"
	            min="0"></td>
	        <td>Fanta</td>
	        <td>0,33 l</td>
	        <td>3,90&euro;</td>
	      </tr>
	      <tr>
	        <td><input type="number" name="anzahlSprite" value="<jsp:getProperty name='form' property='anzahlSprite' />"
	            min="0"></td>
	        <td>Sprite</td>
	        <td>0,4 l</td>
	        <td>4,40&euro;</td>
	      </tr>
	      <tr>
	        <td><input type="number" name="anzahlWasser" value="<jsp:getProperty name='form' property='anzahlWasser' />"
	            min="0"></td>
	        <td>Wasser</td>
	        <td>0,2 l</td>
	        <td>1,80&euro;</td>
	      </tr>
	      <tr>
	        <td><input type="number" name="anzahlApfel" value="<jsp:getProperty name='form' property='anzahlApfel' />"
	            min="0"></td>
	        <td>Apfelsaftschorle</td>
	        <td>0,4 l</td>
	        <td>4,40&euro;</td>
	      </tr>
	    </table></div><br>
<div class="Essen">
      <h2>Essen ausw&auml;hlen</h2>
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
        <td>18,70&euro;</td>
      </tr>
      <tr>
        <td><input type="number" name="anzahlKaesespaetzle"
            value="<jsp:getProperty name='form' property='anzahlKaesespaetzle' />" min="0"></td>
        <td>K&auml;sesp&auml;tzle</td>
        <td>16,40&euro;</td>
      </tr>
      <tr>
        <td><input type="number" name="anzahlSpaghetti"
            value="<jsp:getProperty name='form' property='anzahlSpaghetti' />" min="0"></td>
        <td>Spaghetti Bolognese</td>
        <td>17,50&euro;</td>
      </tr>
      <tr>
        <td><input type="number" name="anzahlWildeKartoffeln" value="<jsp:getProperty name='form' property='anzahlWildeKartoffeln' />"
            min="0"></td>
        <td>Wilde Kartoffeln</td>
        <td>12,30&euro;</td>
      </tr>
      <tr>
        <td><input type="number" name="anzahlPommes" value="<jsp:getProperty name='form' property='anzahlPommes' />"
            min="0"></td>
        <td>Pommes</td>
        <td>8,70&euro;</td>
      </tr>
    </table><br></div>
    <button type="submit">Bestellung absenden</button>
    <a href="index.jsp"><button type="button">Bestellung abbrechen</button></a>

  </form>
	    
	    <%
} 
else {
    button = request.getParameter("rechnung");
    if (button != null) {

    }
}


%>
</body>
</html>
