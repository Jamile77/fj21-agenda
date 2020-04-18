<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.*,
	br.com.caelum.jdbc.dao.*,
	br.com.caelum.jdbc.modelo.*,
	java.text.SimpleDateFormat " %>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista de Contatos</title>
</head>
<body>
	<table>
	<tr>
		<th>Nome</th>
		<th>Email</th>
		<th>Endereço</th>
		<th>Data de Nascimento</th>
	</tr>
	<%
	ContatoDAO dao = new ContatoDAO();
	List<Contato> contatos = dao.getLista();
	SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
	
	for(Contato contato : contatos){
	%>
			
		<tr>
			<td title="Nome"><%=contato.getNome() %></td>
			<td title="Email"><%=contato.getEmail() %></td>
			<td title="Endereço"><%=contato.getEndereco() %></td>
			<td title="Data de Nascimento"><%=sdf.format(contato.getDataNascimento().getTime())%></td>		
		</tr>
	<%		
	}	
	%>	
	</table>
</body>
</html>