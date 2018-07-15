package DAO;

import java.sql.Connection;
import java.sql.DriverManager;

import com.mysql.jdbc.Driver;

public class ConnectionFactory {
	private Connection conexao;
	
	
	
	
	public Connection conecta_mysql() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			conexao = DriverManager.getConnection("jdbc:mysql://localhost/teste_db","root", "123456");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conexao;
		
	}

}
