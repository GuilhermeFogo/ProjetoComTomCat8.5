package HelperCampos;

import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import Objetos.Cliente;

public class Pega_Campos extends HttpServlet {
	// atributos
	private String nome;
	private String senha;
	private Cliente cliente;
	private String email;
	private String data;
	// construtor
	public Pega_Campos(HttpServletRequest request) {
		this.cliente = new Cliente();
		this.nome = request.getParameter("campo_nome_real");
		this.senha = request.getParameter("campo_senha");
		this.email = request.getParameter("campo_email");
		this.data = request.getParameter("data");
	}
	
	// gets e sets
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	// metodos
	
	
	

}
