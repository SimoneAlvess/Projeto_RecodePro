package crud.DAO;

// Importações
import crud.factory.ConnectionFactory;
import crud.model.Clientes;
import crud.model.Compra;
import crud.model.Destinos;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class CompraDAO {

    // Inserção de Dados
    public void insertCompra(Compra compra) {
        String sql = "INSERT INTO compra(data_hora_viagem, forma_pagamento, cliente_id, destino_id )" + "VALUES(?, ?, ?, ?)";

        Connection conn = null;
        PreparedStatement pstm = null;

        try {
            conn = ConnectionFactory.createConnectionToMySQL();
            pstm = conn.prepareStatement(sql);

            Timestamp timestamp = Timestamp.valueOf(compra.getDataHoraViagem());
            pstm.setTimestamp(1, timestamp);
            pstm.setString(2, compra.getFormaPagamento());
            pstm.setInt(3, compra.getCliente().getIdCliente());
            pstm.setInt(4, compra.getDestino().getIdDestino());

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
    public void deleteCompra(int id) {
        String sql = "DELETE FROM compra WHERE id_compra = ?";

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
    public void updateCompra(Compra compra) {
        String sql = "UPDATE compra SET  data_hora_viagem = ?, forma_pagamento = ?, cliente_id = ?, destino_id = ? WHERE id_compra = ?";

        Connection conn = null;
        PreparedStatement pstm = null;

        try {
            conn = ConnectionFactory.createConnectionToMySQL();
            pstm = conn.prepareStatement(sql);

            pstm.setObject(1, compra.getDataHoraViagem());
            pstm.setString(2, compra.getFormaPagamento());
            pstm.setInt(3, compra.getCliente().getIdCliente());
            pstm.setInt(4, compra.getDestino().getIdDestino());
            pstm.setInt(5, compra.getIdCompra());
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
    public List<Compra> getAllCompra() {
        String sql = "SELECT * FROM compra";

        List<Compra> compras = new ArrayList<Compra>();

        Connection conn = null;
        PreparedStatement pstm = null;
        ResultSet rset = null;

        try {
            conn = ConnectionFactory.createConnectionToMySQL();
            pstm = conn.prepareStatement(sql);
            rset = pstm.executeQuery();

            while (rset.next()) {
                // Objeto
                Compra compra = new Compra();
                compra.setIdCompra(rset.getInt("id_compra"));
                compra.setDataHoraViagem(rset.getTimestamp("data_hora_viagem").toLocalDateTime());
                compra.setFormaPagamento(rset.getString("forma_pagamento"));
                Clientes clienteId = new Clientes();
                clienteId.setIdCliente(rset.getInt("cliente_id"));
                compra.setCliente(clienteId);
                Destinos destinoId = new Destinos();
                destinoId.setIdDestino(rset.getInt("destino_id"));
                compra.setDestino(destinoId);
                 
                compras.add(compra);
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
        return compras;
    }
}
