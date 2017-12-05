<!-- Importation de la Classe CalculMetier ou se trouve les methodes de calculs somme et produit -->
<%@page import = "fr.univ.nantes.m1alma.CalculMetier" %>

<!-- Test de la page jsp -->
<%
	double a = 0;
	double b = 0;
	double resultat = 0;
	String action = request.getParameter("action"); // ici on lit l'action qui est le bouton
	
	if(action!=null){// s'il est different de nulle
		a = Double.parseDouble(request.getParameter("a")); // on lit a
		b = Double.parseDouble(request.getParameter("b")); // on lit b
		
		CalculMetier metier = new CalculMetier();
		
		if (action.equals("Somme")){ //Maintenant si l'action est Somme
			resultat = metier.somme(a, b); // le resulat est metier.somme()
		}
		
		else{
			resultat = metier.produit(a, b); // sinon le resultat est metier.produit()
		}
		
	}

%>

<html>
<body>
	<form action = "index.jsp" method = "post">
		<table>
			<tr>
				<td>A : </td> <td><input type = "text" name = "a" value = "<%=a%>"/></td>
				<td>B : </td> <td><input type = "text" name = "b" value = "<%=b%>"/></td>
			</tr>
			
			<tr>
				</td> <td><input type = "submit" value = "Somme" name = "action" /></td>
				</td> <td><input type = "submit" value = "Produit" name = "action" /></td>
			</tr>
			
			<tr>
				<td>Resultat : </td> <td><%=resultat %></td>
			</tr>
		</table>
	</form>
</body>
</html>
