package crud.model;

public class Destinos {
    //Atributos 
    private int idDestino;
    private String destino;
    private double preco;
    private String transporte;
    private Promocoes promocao;
    
    // Construtor para DAO
    public Destinos(){
    }

    // Construtor de Insert
    public Destinos(String destino, double preco, String transporte, Promocoes promocao) {
        this.destino = destino;
        this.preco = preco;
        this.transporte = transporte;
        this.promocao = promocao;
    }
    
    // Construtor de Update
     public Destinos(int idDestino, String destino, double preco, String transporte, Promocoes promocao) {
        this.idDestino = idDestino;
        this.destino = destino;
        this.preco = preco;
        this.transporte = transporte;
        this.promocao = promocao;
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
}
