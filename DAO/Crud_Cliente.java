package DAO;

import java.sql.PreparedStatement;
import java.sql.SQLException;

import Objetos.Cliente;

public class Crud_Cliente extends ConnectionFactory{
	
	public void inserir_Cliente(Cliente cliente){
		try{
			String sql = "insert into cliente(Nome,senha,email) values(?,?,?)";
			PreparedStatement prepare = conecta_mysql().prepareStatement(sql);
			prepare.setString(1, cliente.getNome_real());
			prepare.setString(2, cliente.getSenha());
			prepare.setString(3, cliente.getEmail());
			
			prepare.executeQuery();
			prepare.close();
		}catch (SQLException e) {
			int erro = e.getErrorCode();
			System.out.println(erro);
		}
	}
}
