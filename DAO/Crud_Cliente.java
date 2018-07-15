package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import Objetos.Cliente;

public class Crud_Cliente{
	private Connection conn;
	public Crud_Cliente() {
		this.conn =  new ConnectionFactory().conecta_mysql();
	}
	
	
	public void inserir_Cliente(Cliente cliente){
		try{
			String sql = "insert into cliente(Nome,senha,email) values(?,?,?)";
			PreparedStatement prepare = this.conn.prepareStatement(sql);
			prepare.setString(1, cliente.getNome_real());
			prepare.setString(2, cliente.getSenha());
			prepare.setString(3, cliente.getEmail());
			
			prepare.execute();
			prepare.close();
		}catch (SQLException e) {
			int erro = e.getErrorCode();
			System.out.println(erro);
		}
	}
}
