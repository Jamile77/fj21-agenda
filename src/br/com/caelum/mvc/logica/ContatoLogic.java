package br.com.caelum.mvc.logica;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.jdbc.dao.ContatoDAO;
import br.com.caelum.jdbc.modelo.Contato;

public class ContatoLogic implements Logica {

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse resp) throws Exception {

		String nome = req.getParameter("nome");
		String email = req.getParameter("email");
		String endereco = req.getParameter("endereco");
		String dataEmTexto = req.getParameter("dataNascimento");
		Calendar dataNascimento = null;
	
		try {
			Date data = new SimpleDateFormat("dd/MM/yyyy").parse(dataEmTexto);
			dataNascimento = Calendar.getInstance();
			dataNascimento.setTime(data);
		} catch (ParseException e) {
			throw new Exception("Erro de conversão da data", e);
		}

		ContatoDAO dao = new ContatoDAO();
		Contato contato = new Contato();
		contato.setNome(nome);
		contato.setEmail(email);
		contato.setEndereco(endereco);
		contato.setDataNascimento(dataNascimento);
		
		if (req.getParameter("id")==null) {
			dao.adiciona(contato);
			System.out.println("Adicionando contato ...");
		} else {
			long id = Long.parseLong(req.getParameter("id"));
			contato.setId(id);
			dao.altera(contato);
			System.out.println("Alterando contato ...");
		}
		
		return "mvc?logica=ListaContatosLogic";
	}

}
