package br.com.caelum.jdbc.teste;

import br.com.caelum.jdbc.dao.ContatoDAO;
import br.com.caelum.jdbc.modelo.Contato;

public class TestaRemove {

	public static void main(String[] args) {

		ContatoDAO dao = new ContatoDAO();
		
		Contato contato = new Contato();
		
		contato.setId(2);
		
		dao.remove(contato);
	}

}
