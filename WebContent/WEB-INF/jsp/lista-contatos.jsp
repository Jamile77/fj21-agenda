<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista de Contatos</title>
</head>
<body>	
	<c:import url="cabecalho.jsp"></c:import>
		
	<table>
		<tr>
			<th>Nome:</th>
			<th>Email:</th>
			<th>Endereço:</th>
			<th>Data de Nascimento:</th>
		</tr>
		<!-- percorre contatos montando as linhas da tabela -->
		<c:forEach var="contato" items="${contatos}" varStatus="id">
			<tr bgcolor="#${id.count % 2 == 0 ? 'aaee88' : 'ffffff' }">
				<td>${contato.nome}</td> 
				<td>
					<c:choose>
						<c:when test="${not empty contato.email}">
							<a href="mailto:${contato.email}">${contato.email}</a>							
						</c:when>
						<c:otherwise>
							E-mail não informado
						</c:otherwise>
					</c:choose>
					<!-- 
					<c:if test="${not empty contato.email}">
						<a href="mailto:${contato.email}">${contato.email}</a>					
					</c:if>
					
					<c:if test="${empty contato.email}">
						E-mail não informado
					</c:if>
					 -->
				</td>
				<td>${contato.endereco}</td>
				<td>
				<fmt:formatDate value="${contato.dataNascimento.time}" pattern="dd/MM/yyyy"/>
				</td>
				<td>
					<a href="mvc?logica=RemoveContatoLogic&id=${contato.id}">Remover</a>
				</td>
				<td>
					<a href="mvc?logica=MostraContatoLogic&id=${contato.id}">Alterar</a>
				</td>				
			</tr>			
		</c:forEach>
	</table>
	
	<br/>
	
	<button><a href="mvc?logica=NovoContatoLogic">Adicionar</a></button>
	
	<c:import url="rodape.jsp"></c:import>
	
</body>
</html>