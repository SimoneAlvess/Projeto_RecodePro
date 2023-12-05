package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DestinosDAO;
import dao.PromocoesDAO;
import model.Destinos;
import model.Promocoes;

@WebServlet(urlPatterns = { "/destino", "/destino-getCreate", "/destino-create", "/destino-update", "/destino-delete" })
public class DestinosServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	DestinosDAO destinoDao = new DestinosDAO();

	PromocoesDAO promocaoDao = new PromocoesDAO();

	public DestinosServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String action = request.getServletPath();
		switch (action) {
		case "/destino":
			read(request, response);
			break;
		case "/destino-getCreate":
			getCreate(request, response);
			break;
		case "/destino-create":
			create(request, response);
			break;
		case "/destino-update":
			update(request, response);
			break;
		case "/destino-delete":
			delete(request, response);
			break;
		default:
			response.sendRedirect("index.jsp");
			break;
		}
	}

	/** Listar Destinos **/
	protected void read(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Destinos> lista = destinoDao.getAllDestinos();
		request.setAttribute("listaDestinos", lista);

		RequestDispatcher rd = request.getRequestDispatcher("destino-getCreate");
		rd.forward(request, response);
	}

	/** Listar Promoções **/
	protected void getCreate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Promocoes> listaPromocoes = promocaoDao.getAllPromocao();
		request.setAttribute("listaPromocao", listaPromocoes);

		RequestDispatcher rd = request.getRequestDispatcher("./views/destinos/index.jsp");
		rd.forward(request, response);
	}

	/** Criar Destinos **/
	protected void create(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String destino = request.getParameter("destino");
		double preco = Double.parseDouble(request.getParameter("preco"));
		String transporte = request.getParameter("transporte");

		int idPromocao = Integer.parseInt(request.getParameter("promocao"));
		Promocoes promocao = promocaoDao.getPromocaoById(idPromocao);

		double desconto = promocao.getDesconto();
		double precoTotal = preco * (1 - desconto);

		Destinos novoDestino = new Destinos(destino, preco, transporte, promocao, precoTotal);

		destinoDao.insertDestino(novoDestino);
		response.sendRedirect("destino");
	}

	/** Editar Destinos **/
	protected void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		String destino = request.getParameter("destino");
		double preco = Double.parseDouble(request.getParameter("preco"));
		String transporte = request.getParameter("transporte");

		int idPromocao = Integer.parseInt(request.getParameter("promocao"));
		Promocoes promocao = promocaoDao.getPromocaoById(idPromocao);

		double desconto = promocao.getDesconto();
		double precoTotal = preco * (1 - desconto);

		Destinos editDestino = new Destinos(id, destino, preco, transporte, promocao, precoTotal);

		destinoDao.updateDestino(editDestino);
		response.sendRedirect("destino");
	}

	/** Excluir Destinos **/
	protected void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		destinoDao.deleteDestino(id);

		response.sendRedirect("destino");
	}
}
