package br.com.caelum.mvc.logica;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.jdbc.dao.ContatoDAO;
import br.com.caelum.jdbc.modelo.Contato;

public class MostraContatoLogic implements Logica {

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse resp) throws Exception {

		long id = Long.parseLong(req.getParameter("id"));
		
		ContatoDAO dao = new ContatoDAO();
		
		Contato contato = dao.pesquisa(id);
		
		req.setAttribute("contato", contato);
		
		System.out.println("Mostrando os dados do contato ...");
		
		return "WEB-INF/jsp/altera-contato.jsp";
	}

}
