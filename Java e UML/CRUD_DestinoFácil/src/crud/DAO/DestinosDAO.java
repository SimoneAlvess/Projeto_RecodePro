package crud.DAO;

// Importações
import crud.factory.ConnectionFactory;
import crud.model.Destinos;
import crud.model.Promocoes;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class DestinosDAO {

    // Inserção de Dados
    public void insertDestino(Destinos destino) {
        String sql = "INSERT INTO destinos (destino, preco, transporte, promocao_id)" + "VALUES(?, ?, ?, ?)";

        Connection conn = null;
        PreparedStatement pstm = null;

        try {
            conn = ConnectionFactory.createConnectionToMySQL();
            pstm = conn.prepareStatement(sql);

            pstm.setString(1, destino.getDestino());
            pstm.setDouble(2, destino.getPreco());
            pstm.setString(3, destino.getTransporte());
            pstm.setInt(4, destino.getPromocao().getIdPromocao());

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
    public void deleteDestino(int id) {
        String sql = "DELETE FROM destinos WHERE id_destino = ?";

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
    public void updateDestino(Destinos destino) {
        String sql = "UPDATE destinos SET  destino = ?, preco = ?, transporte = ?, promocao_id = ? WHERE id_destino = ?";

        Connection conn = null;
        PreparedStatement pstm = null;

        try {
            conn = ConnectionFactory.createConnectionToMySQL();
            pstm = conn.prepareStatement(sql);

            pstm.setString(1, destino.getDestino());
            pstm.setDouble(2, destino.getPreco());
            pstm.setString(3, destino.getTransporte());
            pstm.setInt(4, destino.getPromocao().getIdPromocao());
            pstm.setInt(5, destino.getIdDestino());

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
    public List<Destinos> getAllDestinos() {
        String sql = "SELECT * FROM destinos";

        List<Destinos> destinosLista = new ArrayList<>();

        Connection conn = null;
        PreparedStatement pstm = null;
        ResultSet rset = null;

        try {
            conn = ConnectionFactory.createConnectionToMySQL();
            pstm = conn.prepareStatement(sql);
            rset = pstm.executeQuery();

            while (rset.next()) {
                Destinos destino = new Destinos();

                destino.setIdDestino(rset.getInt("id_destino"));
                destino.setDestino(rset.getString("destino"));
                destino.setPreco(rset.getDouble("preco"));
                destino.setTransporte(rset.getString("transporte"));
                Promocoes promocao = new Promocoes();
                promocao.setIdPromocao(rset.getInt("promocao_id"));
                destino.setPromocao(promocao);

                destinosLista.add(destino);

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
        return destinosLista;
    }

    // Obter destino por ID
    public Destinos getDestinoById(int id) {
        String sql = "SELECT * FROM destinos WHERE id_destino = ?";
        Destinos destino = null;

        Connection conn = null;
        PreparedStatement pstm = null;
        ResultSet rset = null;

        try {
            conn = ConnectionFactory.createConnectionToMySQL();
            pstm = conn.prepareStatement(sql);
            pstm.setInt(1, id);
            rset = pstm.executeQuery();

            if (rset.next()) {
                destino = new Destinos();
                destino.setIdDestino(rset.getInt("id_destino"));
                destino.setDestino(rset.getString("destino"));
                destino.setPreco(rset.getDouble("preco"));
                destino.setTransporte(rset.getString("transporte"));

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

        return destino;
    }

}
