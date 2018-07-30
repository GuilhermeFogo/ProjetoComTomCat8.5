package Servelets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.Crud_Cliente;
import HelperCampos.Pega_Campos;
import Objetos.Cliente;

/**
 * Servlet implementation class Formulario
 */
@WebServlet("/Formulario")
public class Formulario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Formulario() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("Formulario.jsp").include(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			PrintWriter out = response.getWriter();
			Pega_Campos campos = new Pega_Campos(request);
			Cliente cliente = new Cliente();
			boolean verifica_senha = campos.Conpara();
			if (verifica_senha) {
				cliente = campos.Atribuir_cliente();
				Crud_Cliente crud = new Crud_Cliente();
				crud.inserir_Cliente(cliente);
				
			}else{
				out.println("<html>");
				out.print("<header>");
				out.print("<p>Tente Novamente</p>");
				out.print("</header>");
				out.println("</html>");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.getRequestDispatcher("Formulario.jsp").include(request, response);
	}

}
