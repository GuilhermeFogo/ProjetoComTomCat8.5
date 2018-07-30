package Objetos;

public abstract class Pessoa extends Endereco {
	
	// atributos
	private String nome_real;
	private String email;
	private String nome_usuario;
	private String senha;
	private String telefone;
	private String sexo;
	
	// get e sets
	
	public String getSexo() {
		return sexo;
	}
	public void setSexo(String sexo) {
		this.sexo = sexo;
	}
	public String getNome_real() {
		return nome_real;
	}
	public void setNome_real(String nome_real) {
		this.nome_real = nome_real;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNome_usuario() {
		return nome_usuario;
	}
	public void setNome_usuario(String nome_usuario) {
		this.nome_usuario = nome_usuario;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	public String getTelefone() {
		return telefone;
	}
	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}
	
	public boolean Loguin() {
		boolean verifica =false;
		Cliente cliente = new Cliente();
		if (this.senha.equals(null)|| senha.isEmpty()) {
			return verifica;
		}else{
			if (this.nome_usuario.equals(null)|| this.nome_usuario.isEmpty()) {
				return verifica;
			}else{
				if (this.nome_usuario.equals(cliente.getNome_usuario())&& 
						this.senha.equals(cliente.getSenha())) {
					verifica = true;
					return verifica;
				}else{
					return verifica;
				}
			}	
		}
	}
	
	
	

}
