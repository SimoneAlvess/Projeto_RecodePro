package crud.model;

// Importações
import java.time.LocalDateTime;

public class Promocoes {
    //Atributos
    private int idPromocao;
    private double desconto;
    private LocalDateTime validadePromocao;
    private String pacote;

    // Construtor para DAO
    public Promocoes(){
    }
    
    // Construtor de Insert
    public Promocoes(double desconto, LocalDateTime validadePromocao, String pacote) {
        this.desconto = desconto;
        this.validadePromocao = validadePromocao;
        this.pacote = pacote;
    }

    // Construtor de Update
    public Promocoes(int idPromocao, double desconto, LocalDateTime validadePromocao, String pacote) {
        this.idPromocao = idPromocao;
        this.desconto = desconto;
        this.validadePromocao = validadePromocao;
        this.pacote = pacote;
    }

    // Métodos Getter e Setter
    public int getIdPromocao() {
        return idPromocao;
    }

    public void setIdPromocao(int idPromocao) {
        this.idPromocao = idPromocao;
    }

    public double getDesconto() {
        return desconto;
    }

    public void setDesconto(double desconto) {
        this.desconto = desconto;
    }

    public LocalDateTime getValidadePromocao() {
        return validadePromocao;
    }

    public void setValidadePromocao(LocalDateTime validadePromocao) {
        this.validadePromocao = validadePromocao;
    }

    public String getPacote() {
        return pacote;
    }

    public void setPacote(String pacote) {
        this.pacote = pacote;
    } 
}
