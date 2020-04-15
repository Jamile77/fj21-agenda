package br.com.caelum.jdbc.teste;

import java.util.Calendar;

import br.com.caelum.jdbc.dao.ContatoDAO;
import br.com.caelum.jdbc.modelo.Contato;

public class TestaInsere {

	public static void main(String[] args) {

		Contato contato = new Contato();
		contato.setNome("Rosa");
		contato.setEmail("rosa@caelum.com.br");
		contato.setEndereco("Campo das Flores");
		contato.setDataNascimento(Calendar.getInstance());

		ContatoDAO dao = new ContatoDAO();
		
		dao.adiciona(contato);
		
		System.out.println("Gravado!!!");
	}

}
