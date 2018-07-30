package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.MysqlIO;

import Objetos.Cliente;

public class Crud_Cliente{
	private Connection conn;
	public Crud_Cliente() {
		this.conn = new ConnectionFactory().conecta_mysql();
	}
	
	
	public void inserir_Cliente(Cliente cliente){
		try{
			String sql = "insert into cliente(Nome,senha,email) values(?,?,?)";
			PreparedStatement prepare = getPrepeare(cliente, sql);
			
			prepare.execute();
			prepare.close();
		}catch (SQLException e) {
			int erro = e.getErrorCode();
			System.out.println(erro);
		}
	}
	
	private PreparedStatement getPrepeare(Cliente cliente, String sql) {
		PreparedStatement prepare = null;
		try {
			prepare = this.conn.prepareStatement(sql);
			prepare.setString(1, cliente.getNome_real());
			prepare.setString(2, cliente.getSenha());
			prepare.setString(3, cliente.getEmail());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			return prepare;
		}
	}
	
	public List<Cliente> Busca_Cliente() {
		List<Cliente> lista_cliente = new ArrayList<Cliente>();
		try {
			String sql = "select * from cliente";
			Statement smpt =this.conn.createStatement();
			ResultSet resultado = smpt.executeQuery(sql);
			
			while (resultado.next()) {
				Cliente cliente = new Cliente();
				cliente.setNome_real(resultado.getString("Nome"));
				cliente.setSenha(resultado.getString("senha"));
				cliente.setEmail(resultado.getString("email"));
				lista_cliente.add(cliente);
			}
			
			resultado.close();
			smpt.close();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {
			
			return lista_cliente ;
		}
	}
	
	public void Deletar() {
		try {
			Cliente cliente = new Cliente();
			
			String sql = "delete from cliente where id=" + cliente.getId(); 
			this.conn.prepareStatement(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
