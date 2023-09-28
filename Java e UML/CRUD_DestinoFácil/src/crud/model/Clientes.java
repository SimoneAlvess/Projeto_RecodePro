package crud.model;

public class Clientes {
    //Atributos
    private int idCliente;
    private String nome;
    private String email;
    private String senha;

    // Construtor para DAO
    public Clientes(){
    }
    
    // Construtor de Insert
    public Clientes(String nome, String email, String senha){
        this.nome = nome;
        this.email = email;
        this.senha = senha;
    }
    
    // Construtor de Update
    public Clientes(String nome, String email, String senha, int idCliente) {
        this.idCliente = idCliente;
        this.nome = nome;
        this.email = email;
        this.senha = senha;
    }
    
    // Métodos Getter e Setter
    public int getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(int idCliente) {
        this.idCliente = idCliente;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    } 
}
