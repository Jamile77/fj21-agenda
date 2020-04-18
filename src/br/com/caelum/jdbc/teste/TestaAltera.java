package br.com.caelum.jdbc.teste;

import java.util.Calendar;

import br.com.caelum.jdbc.dao.ContatoDAO;
import br.com.caelum.jdbc.modelo.Contato;

public class TestaAltera {

	public static void main(String[] args) {
		ContatoDAO dao = new ContatoDAO();
		
		Contato contato = new Contato();
		
		contato.setDataNascimento(Calendar.getInstance());
		contato.setEmail("j@caelum.com.br");
		contato.setNome("j");
		contato.setEndereco("paripe");
		contato.setId(10);
		
		dao.altera(contato);
		
	}
}
