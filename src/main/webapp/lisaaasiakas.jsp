<%
if(session.getAttribute("kayttaja")==null){		
	response.sendRedirect("index.jsp");	
	return;
}
response.setHeader("Cache-Control", "no-cache");
response.setHeader("Cache-Control", "no-store");
response.setHeader("Pragma", "no-cache");
response.setDateHeader("Expires", 0);
%><%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script src="scripts/main.js"></script>
<link rel="stylesheet" type="text/css" href="css/main.css">
<title>Asiakkaan lis?ys</title>
</head>
<body onload="asetaFocus('etunimi')" onkeydown="tutkiKey(event, 'lisaa')">
<form name="lomake">
	<table>
		<thead>
		<tr>
		<th colspan="6" class="oikealle"><a id="linkki" href="listaaAsiakkaat.jsp">Takaisin listaukseen</a></th>
		</tr>
		<tr>
		<th>Etunimi</th>
		<th>Sukunimi</th>
		<th>Puhelin</th>
		<th>S?hk?posti</th>
		<th></th>
		</tr>
		</thead>
		<tbody>
			<tr>
				<td><input type="text" name ="etunimi" id="etunimi"/></td>
				<td><input type="text" name ="sukunimi" id="sukunimi"/></td>
				<td><input type="text" name ="puhelin" id="puhelin"/></td>
				<td><input type="text" name ="sposti" id="sposti"/></td>
				<td><input type="button" value="Lis??" onclick="tutkiJaLisaa()"></td>
			</tr>
		</tbody>	
	</table>
<p id="ilmo"></p>
</form>
</body>
</html>