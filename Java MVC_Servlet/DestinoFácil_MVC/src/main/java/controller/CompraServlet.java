package controller;

import java.io.IOException;
import java.time.LocalDateTime;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ClientesDAO;
import dao.CompraDAO;
import dao.DestinosDAO;
import model.Clientes;
import model.Compra;
import model.Destinos;

@WebServlet(urlPatterns = { "/compra", "/compra-getCreate", "/compra-create", "/compra-update", "/compra-delete" })
public class CompraServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	CompraDAO compraDao = new CompraDAO();
	Compra compraObject = new Compra();

	ClientesDAO clienteDao = new ClientesDAO();
	DestinosDAO destinoDao = new DestinosDAO();

	public CompraServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String action = request.getServletPath();
		switch (action) {
		case "/compra":
			read(request, response);
			break;
		case "/compra-getCreate":
			getCreate(request, response);
			break;
		case "/compra-create":
			create(request, response);
			break;
		case "/compra-update":
			update(request, response);
			break;
		case "/compra-delete":
			delete(request, response);
			break;

		default:
			response.sendRedirect("index.jsp");
			break;
		}
	}

	/** Listar Compras **/
	protected void read(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Compra> lista = compraDao.getAllCompra();
		
		request.setAttribute("listaCompras", lista);

		RequestDispatcher rd = request.getRequestDispatcher("compra-getCreate");
		rd.forward(request, response);
	}

	/** Listar Clientes & Destinos **/
	protected void getCreate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Clientes> listaCliente = clienteDao.getAllClientes();
		request.setAttribute("listaClientes", listaCliente);

		List<Destinos> listaDestino = destinoDao.getAllDestinos();
		request.setAttribute("listaDestinos", listaDestino);

		RequestDispatcher rd = request.getRequestDispatcher("./views/compras/index.jsp");
		rd.forward(request, response);
	}

	/** Criar Compra **/
	protected void create(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		compraObject.setFormaPagamento(request.getParameter("formaPagamento"));
		compraObject.setDataHoraViagem(LocalDateTime.parse(request.getParameter("dataHoraViagem")));

		compraObject.setCliente(clienteDao.getClienteById(Integer.parseInt(request.getParameter("cliente"))));
		compraObject.setDestino(destinoDao.getDestinoById(Integer.parseInt(request.getParameter("destino"))));
		
		compraDao.insertCompra(compraObject);
		response.sendRedirect("compra");
	}

	/** Editar Compra **/
	protected void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		compraObject.setIdCompra(Integer.parseInt(request.getParameter("id")));
		compraObject.setFormaPagamento(request.getParameter("formaPagamento"));
		compraObject.setDataHoraViagem(LocalDateTime.parse(request.getParameter("dataHoraViagem")));
		
		compraObject.setCliente(clienteDao.getClienteById(Integer.parseInt(request.getParameter("cliente"))));
		compraObject.setDestino(destinoDao.getDestinoById(Integer.parseInt(request.getParameter("destino"))));

		compraDao.updateCompra(compraObject);
		response.sendRedirect("compra");
	}
	
	/** Excluir Compra **/
	protected void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		compraDao.deleteCompra(id);
		response.sendRedirect("compra");
	}
}
