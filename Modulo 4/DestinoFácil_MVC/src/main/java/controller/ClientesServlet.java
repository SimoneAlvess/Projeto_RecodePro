package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ClientesDAO;
import model.Clientes;

@WebServlet(urlPatterns = { "/cliente", "/cliente-create", "/cliente-update", "/cliente-delete" })
public class ClientesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	ClientesDAO clienteDao = new ClientesDAO();
	Clientes clienteObject = new Clientes();
	
	public ClientesServlet() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String action = request.getServletPath();
		switch (action) {
		case "/cliente":
			read(request, response);
			break;
		case "/cliente-create":
			create(request, response);
			break;
		case "/cliente-update":
			update(request, response);
			break;
		case "/cliente-delete":
			delete(request, response);
			break;
		default:
			response.sendRedirect("index.jsp");
			break;
		}
	}

	/** Listar Clientes **/
	protected void read(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Clientes> lista = clienteDao.getAllClientes();
		request.setAttribute("listaClientes", lista);
		RequestDispatcher rd = request.getRequestDispatcher("./views/clientes/index.jsp");
		rd.forward(request, response);
	}

	/** Criar Clientes **/
	protected void create(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		clienteObject.setNome(request.getParameter("nome"));
		clienteObject.setEmail(request.getParameter("email"));
		clienteObject.setSenha(request.getParameter("senha"));
		
		clienteDao.insertCliente(clienteObject);
		response.sendRedirect("cliente");
	}
	
	/** Editar Clientes **/
	protected void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		clienteObject.setIdCliente(Integer.parseInt(request.getParameter("id")));
		clienteObject.setNome(request.getParameter("nome"));
		clienteObject.setEmail(request.getParameter("email"));
		clienteObject.setSenha(request.getParameter("senha"));
		
		clienteDao.updateCliente(clienteObject);
		response.sendRedirect("cliente");
	}
	
	/** Excluir Clientes **/
	protected void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		clienteDao.deleteById(id);
		response.sendRedirect("cliente");
	}

}
