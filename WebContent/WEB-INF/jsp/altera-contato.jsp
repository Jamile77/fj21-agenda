<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<!DOCTYPE html>
<html>
<head>
<link href="css/jquery-ui.css" rel="stylesheet"/>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery-ui.js"></script>
<meta charset="UTF-8">
<title>Alterar Contato</title>
</head>
<body>
	<c:import url="cabecalho.jsp"></c:import>
	
	<form action="mvc">
		<input type="hidden" name="logica" value="ContatoLogic">
		<input type="hidden" name="id" value="${contato.id}">
		Nome: <input type="text" name="nome" value="${contato.nome}"/><br/>
		Email: <input type="text" name="email" value="${contato.email}"/><br/>
		Endereço: <input type="text" name="endereco" value="${contato.endereco}"/><br/>
		Data de Nascimento: <tags:campoData id="dataNascimento"/><br/>
		<input type="submit" value="Alterar">		
	</form>
	
	<c:import url="rodape.jsp"></c:import>
</body>
</html>