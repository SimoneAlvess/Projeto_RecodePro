package model;

public class Destinos {
	// Atributos
	private int idDestino;
	private String destino;
	private double preco;
	private String transporte;
	private Promocoes promocao;
	private double precoTotal;

	// Construtores
	public Destinos() {
	}

	public Destinos(String destino, double preco, String transporte, Promocoes promocao, double precoTotal) {
		this.destino = destino;
		this.preco = preco;
		this.transporte = transporte;
		this.promocao = promocao;
		this.precoTotal = precoTotal;
	}

	public Destinos(int idDestino, String destino, double preco, String transporte, Promocoes promocao, double precoTotal) {
		this.idDestino = idDestino;
		this.destino = destino;
		this.preco = preco;
		this.transporte = transporte;
		this.promocao = promocao;
		this.precoTotal = precoTotal;
	}

	// Métodos Getter e Setter
	public int getIdDestino() {
		return idDestino;
	}

	public void setIdDestino(int idDestino) {
		this.idDestino = idDestino;
	}

	public String getDestino() {
		return destino;
	}

	public void setDestino(String destino) {
		this.destino = destino;
	}

	public double getPreco() {
		return preco;
	}

	public void setPreco(double preco) {
		this.preco = preco;
	}

	public String getTransporte() {
		return transporte;
	}

	public void setTransporte(String transporte) {
		this.transporte = transporte;
	}

	public Promocoes getPromocao() {
		return promocao;
	}

	public void setPromocao(Promocoes promocao) {
		this.promocao = promocao;
	}

	public double getPrecoTotal() {
		return precoTotal;
	}

	public void setPrecoTotal(double precoTotal) {
		this.precoTotal = precoTotal;
	}
}
