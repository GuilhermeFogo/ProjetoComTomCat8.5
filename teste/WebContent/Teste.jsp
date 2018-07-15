<%@page import="DAO.Conexao"%>
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

</head>
<body>


<% 
	Cliente cliente = new Cliente();
	Pega_Campos campos = new Pega_Campos(request);
	String nome = campos.getNome();
	cliente.setNome_real(nome);
	String email = campos.getEmail();
	cliente.setEmail(email);
	String senha = campos.getSenha();
	cliente.setSenha(senha);
	
	out.print(cliente.getNome_real());
	out.println();
	out.print(cliente.getEmail());
	out.println();
	out.print(cliente.getSenha());


%>






</body>
</html>