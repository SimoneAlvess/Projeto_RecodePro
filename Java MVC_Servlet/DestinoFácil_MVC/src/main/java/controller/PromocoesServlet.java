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

import dao.PromocoesDAO;
import model.Promocoes;

@WebServlet(urlPatterns = { "/promocao", "/promocao-create", "/promocao-update", "/promocao-delete" })
public class PromocoesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	PromocoesDAO promocaoDao = new PromocoesDAO();
	Promocoes promocaoObject = new Promocoes();

	public PromocoesServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String action = request.getServletPath();
		switch (action) {
		case "/promocao":
			read(request, response);
			break;
		case "/promocao-create":
			create(request, response);
			break;
		case "/promocao-update":
			update(request, response);
			break;
		case "/promocao-delete":
			delete(request, response);
			break;

		default:
			response.sendRedirect("index.jsp");
			break;
		}
	}
	
	/** Listar Promoções **/
	protected void read(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Promocoes> lista = promocaoDao.getAllPromocao();
		request.setAttribute("listaPromocoes", lista);
		RequestDispatcher rd = request.getRequestDispatcher("./views/promoções/index.jsp");
		rd.forward(request, response);
	}

	/** Criar Promoções **/
	protected void create(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		promocaoObject.setDesconto(Double.parseDouble(request.getParameter("desconto")));
		promocaoObject.setPacote(request.getParameter("pacote"));
		promocaoObject.setValidadePromocao(LocalDateTime.parse(request.getParameter("validadepromo")));

		promocaoDao.insertPromocao(promocaoObject);
		response.sendRedirect("promocao");
	}

	/** Editar Promoções **/
	protected void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		promocaoObject.setIdPromocao(Integer.parseInt(request.getParameter("id")));
		promocaoObject.setDesconto(Double.parseDouble(request.getParameter("desconto")));
		promocaoObject.setPacote(request.getParameter("pacote"));
		promocaoObject.setValidadePromocao(LocalDateTime.parse(request.getParameter("validadepromo")));

		promocaoDao.updatePromocao(promocaoObject);
		response.sendRedirect("promocao");
	}
	
	/** Excluir Promoções **/
	protected void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		promocaoDao.deletePromocao(id);
		response.sendRedirect("promocao");
	}
}
