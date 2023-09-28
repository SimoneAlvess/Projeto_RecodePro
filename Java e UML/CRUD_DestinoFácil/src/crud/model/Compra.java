package crud.model;

// Importações
import java.time.LocalDateTime;

public class Compra {
    //Atributos
    private int idCompra;
    private LocalDateTime dataHoraViagem;
    private String formaPagamento;
    private Clientes cliente;
    private Destinos destino;

    // Construtor para DAO
    public Compra(){
    }
    
    // Construtor Insert
     public Compra(LocalDateTime dataHoraViagem, String formaPagamento, Clientes cliente, Destinos destino) {
        this.dataHoraViagem = dataHoraViagem;
        this.formaPagamento = formaPagamento;
        this.cliente = cliente;
        this.destino = destino;
    }
     
    // Construtor Update
    public Compra(int idCompra, LocalDateTime dataHoraViagem, String formaPagamento, Clientes cliente, Destinos destino) {
        this.idCompra = idCompra;
        this.dataHoraViagem = dataHoraViagem;
        this.formaPagamento = formaPagamento;
        this.cliente = cliente;
        this.destino = destino;
    }
    
    // Métodos Getter e Setter
    public int getIdCompra() {
        return idCompra;
    }

    public void setIdCompra(int idCompra) {
        this.idCompra = idCompra;
    }

    public LocalDateTime getDataHoraViagem() {
        return dataHoraViagem;
    }

    public void setDataHoraViagem(LocalDateTime dataHoraViagem) {
        this.dataHoraViagem = dataHoraViagem;
    }

    public String getFormaPagamento() {
        return formaPagamento;
    }

    public void setFormaPagamento(String formaPagamento) {
        this.formaPagamento = formaPagamento;
    }

    public Clientes getCliente() {
        return cliente;
    }

    public void setCliente(Clientes cliente) {
        this.cliente = cliente;
    }

    public Destinos getDestino() {
        return destino;
    }

    public void setDestino(Destinos destino) {
        this.destino = destino;
    }
    
}
