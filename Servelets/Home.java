package Servelets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.exceptions.jdbc4.MySQLDataException;

import DAO.ConnectionFactory;
import DAO.Crud_Cliente;
import HelperCampos.Pega_Campos;
import Objetos.Cliente;

/**
 * Servlet implementation class Home
 */
@WebServlet(description = "Pagina Inicial", urlPatterns = { "/Home" })
public class Home extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String Nome;
	private String senha;
	private String email;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Home() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		request.getRequestDispatcher("index.jsp").include(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Cliente cliente = new Cliente();
			Pega_Campos campos = new Pega_Campos(request);
			String nome = campos.getNome();
			cliente.setNome_real(nome);
			String email = campos.getEmail();
			cliente.setEmail(email);
			String senha = campos.getSenha();
			cliente.setSenha(senha);
		
			Crud_Cliente crud = new Crud_Cliente();
			crud.inserir_Cliente(cliente);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		request.getRequestDispatcher("Teste.jsp").include(request, response);
		
	}

}
