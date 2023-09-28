package crud.DAO;

// Importações
import crud.factory.ConnectionFactory;
import crud.model.Clientes;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ClientesDAO {

    // Inserção de Dados
    public void insertCliente(Clientes cliente) {
        String sql = "INSERT INTO clientes(nome, email, senha)" + "VALUES(?, ?, ?)";

        Connection conn = null;
        PreparedStatement pstm = null;

        try {
            conn = ConnectionFactory.createConnectionToMySQL();
            pstm = conn.prepareStatement(sql);

            pstm.setString(1, cliente.getNome());
            pstm.setString(2, cliente.getEmail());
            pstm.setString(3, cliente.getSenha());

            pstm.execute();

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (pstm != null) {
                    pstm.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    // Exclusão de Dados
    public void deleteById(int id) {
        String sql = "DELETE FROM clientes WHERE id_cliente = ?";

        Connection conn = null;
        PreparedStatement pstm = null;

        try {
            conn = ConnectionFactory.createConnectionToMySQL();
            pstm = conn.prepareStatement(sql);
            pstm.setInt(1, id);
            pstm.execute();
            
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (pstm != null) {
                    pstm.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    // Atualização de Dados
    public void updateCliente(Clientes cliente) {
        String sql = "UPDATE clientes SET  nome = ?, email = ?, senha = ? WHERE id_cliente = ?";

        Connection conn = null;
        PreparedStatement pstm = null;

        try {
            conn = ConnectionFactory.createConnectionToMySQL();

            pstm = conn.prepareStatement(sql);
            
            pstm.setString(1, cliente.getNome());
            pstm.setString(2, cliente.getEmail());
            pstm.setString(3, cliente.getSenha());
            pstm.setInt(4, cliente.getIdCliente());

            pstm.execute();

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (pstm != null) {
                    pstm.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    // Exibição de Dados
    public List<Clientes> getAllClientes() {
        String sql = "SELECT * FROM clientes";

        List<Clientes> clientes = new ArrayList<Clientes>();

        Connection conn = null;
        PreparedStatement pstm = null;
        ResultSet rset = null;

        try {
            conn = ConnectionFactory.createConnectionToMySQL();
            pstm = conn.prepareStatement(sql);
            rset = pstm.executeQuery();

            while (rset.next()) {
                
                Clientes cliente = new Clientes();
                cliente.setIdCliente(rset.getInt("id_cliente"));
                cliente.setNome(rset.getString("nome"));
                cliente.setEmail(rset.getString("email"));
                cliente.setSenha(rset.getString("senha"));
                clientes.add(cliente);

            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rset != null) {
                    rset.close();
                }
                if (pstm != null) {
                    pstm.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return clientes;
    }

    // Obter cliente por ID
    public Clientes getClienteById(int id) {
        String sql = "SELECT * FROM clientes WHERE id_cliente = ?";
        Clientes cliente = null;

        Connection conn = null;
        PreparedStatement pstm = null;
        ResultSet rset = null;

        try {
            conn = ConnectionFactory.createConnectionToMySQL();
            pstm = conn.prepareStatement(sql);
            pstm.setInt(1, id);
            rset = pstm.executeQuery();

            if (rset.next()) {
                cliente = new Clientes();
                cliente.setIdCliente(rset.getInt("id_cliente"));
                cliente.setNome(rset.getString("nome"));
                cliente.setEmail(rset.getString("email"));
                cliente.setSenha(rset.getString("senha"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rset != null) {
                    rset.close();
                }
                if (pstm != null) {
                    pstm.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        return cliente;
    }
}
