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
	private String rua;
	private String sexo;
	private String cep;
	private String conf_senha;
	// construtor
	public Pega_Campos(HttpServletRequest request) {
		this.cliente = new Cliente();
		this.nome = request.getParameter("campo_nome_real");
		this.senha = request.getParameter("campo_senha");
		this.email = request.getParameter("campo_email");
		this.rua = request.getParameter("campo_rua");
		this.sexo = request.getParameter("campo_sexo");
		this.cep = request.getParameter("campo_cep");
		this.conf_senha = request.getParameter("campo_senha_conf");
	}
	

	public String getConf_senha() {
		return conf_senha;
	}
	
	public void setConf_senha(String conf_senha) {
		this.conf_senha = conf_senha;
	}
	
	public String getRua() {
		return rua;
	}

	public void setRua(String rua) {
		this.rua = rua;
	}

	public String getSexo() {
		return sexo;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
	}

	public String getCep() {
		return cep;
	}

	public void setCep(String cep) {
		this.cep = cep;
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
	
	public boolean Conpara() {
		if (getSenha().equals(getConf_senha())) {
			return true;
		}else {
			return false;
		}
	}
	
	public Cliente Atribuir_cliente() {
		this.cliente.setCep(getCep());
		this.cliente.setNome_real(getNome());
		this.cliente.setEmail(getEmail());
		this.cliente.setRua(getRua());
		this.cliente.setSenha(getSenha());
		this.cliente.setSexo(getSexo());
		
		return this.cliente;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
