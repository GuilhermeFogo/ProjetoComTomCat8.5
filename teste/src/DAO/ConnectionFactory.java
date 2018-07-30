package DAO;

import java.sql.Connection;
import java.sql.DriverManager;

import com.mysql.jdbc.Driver;

public class ConnectionFactory {
	private Connection conexao;
	
	public Connection getConexao() {
		return conexao;
	}
	public void setConexao(Connection conexao) {
		this.conexao = conexao;
	}
	
	public Connection conecta_mysql() {
		try {
			String db_usu ="root";
			String db_pass ="123456";
			String url ="jdbc:mysql://localhost/teste_db";
			Class.forName("com.mysql.jdbc.Driver");
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			setConexao(DriverManager.getConnection(url,db_usu,db_pass));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return getConexao();
		
	}

}
