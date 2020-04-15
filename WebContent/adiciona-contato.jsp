<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<!DOCTYPE html>
<html>
<head>
<link href="css/jquery-ui.css" rel="stylesheet"/>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery-ui.js"></script>
<meta charset="UTF-8">
<title>Adiciona Contatos</title>
</head>
<body>

	<c:import url="cabecalho.jsp"></c:import>
	
	<h1>Adiciona Contatos</h1>
	<hr/><br/>
	<form action="adicionaContato">
		Nome: <input type="text" name="nome"/><br/>
		Email: <input type="text" name="email"/><br/>
		Endereço: <input type="text" name="endereco"/><br/>
		Data de Nascimento: <tags:campoData id="dataNascimento"/><br/>
		<input type="submit" value="gravar"/>
	</form>
	
	<c:import url="rodape.jsp"></c:import>
	
</body>
</html>