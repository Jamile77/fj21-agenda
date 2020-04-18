package br.com.caelum.mvc.logica;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.jdbc.dao.ContatoDAO;
import br.com.caelum.jdbc.modelo.Contato;

public class MostraContatoLogic implements Logica {

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse resp) throws Exception {

		long id = Long.parseLong(req.getParameter("id"));
		
		Connection connection = (Connection) req.getAttribute("conexao");
		
		ContatoDAO dao = new ContatoDAO(connection);
		
		Contato contato = dao.pesquisa(id);
		
		req.setAttribute("contato", contato);
		
		System.out.println("Mostrando os dados do contato ...");
		
		return "WEB-INF/jsp/altera-contato.jsp";
	}

}
