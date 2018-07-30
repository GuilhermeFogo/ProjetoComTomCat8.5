<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.List"%>
<%@page import="DAO.Crud_Cliente"%>
<%@page import="HelperCampos.Pega_Campos"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="Objetos.Cliente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>projetoLoki - Results</title>
	
<!-- Botstrap -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" 
	crossorigin="anonymous">
	<!-- Personalizado CSS -->
	<link rel="stylesheet" href="css/estilo.css">
	
	<!-- Font Ansome -->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
	
	<!-- Jquery -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>



<% Crud_Cliente a = new Crud_Cliente();
List<Cliente> lista = a.Busca_Cliente();
%>
<div class="container">
	
	
	<table width="50%">
		<thead>
		<tr>
			<th>
			 Nome:
			</th>
			 <th>
			  Senha:
			 </th>
			 <th>
			 email:
			 </th>
		</tr>
		</thead>
		<tbody>
			<tr>
				<%
					for(Cliente cliente1 : lista){
						out.print("<tr>");
						out.print("<td>" + cliente1.getNome_real()+"</td>");
						out.print("<td>" + cliente1.getSenha()+"</td>");
						out.print("<td>" + cliente1.getEmail()+"</td>");
						out.print("</tr>");
					}
				%>
			</tr>
		</tbody>
	</table>
</div>






</body>
</html>