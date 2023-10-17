package crud.DAO;

// Importações

import crud.factory.ConnectionFactory;
import crud.model.Promocoes;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

public class PromocoesDAO {
     // Inserção de Dados
    public void insertPromocao(Promocoes promocao) {
        String sql = "INSERT INTO promocoes (desconto, validade_promocao, pacote)" + "VALUES(?, ?, ?)";

        Connection conn = null;
        PreparedStatement pstm = null;

        try {
            conn = ConnectionFactory.createConnectionToMySQL();
            pstm = conn.prepareStatement(sql);
            
            pstm.setDouble(1, promocao.getDesconto());
            Timestamp timestamp = Timestamp.valueOf(promocao.getValidadePromocao());
            pstm.setTimestamp(2, timestamp);
            pstm.setString(3, promocao.getPacote());

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
    public void deletePromocao(int id) {
        String sql = "DELETE FROM promocoes WHERE id_promocao= ?";

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
                if(pstm != null){
                    pstm.close();
                }
                if (conn != null){
                    conn.close();
                }
            } catch (Exception e){
                e.printStackTrace();
            }
        }
    }
    
    // Atualização de Dados
    public void updatePromocao (Promocoes promocao) {
        String sql = "UPDATE promocoes SET  desconto = ?, validade_promocao = ?, pacote = ? WHERE id_promocao = ?";

        Connection conn = null;
        PreparedStatement pstm = null;

        try {
            conn = ConnectionFactory.createConnectionToMySQL();
            pstm = conn.prepareStatement(sql);

            pstm.setDouble(1, promocao.getDesconto());
            pstm.setObject(2, promocao.getValidadePromocao());
            pstm.setString(3, promocao.getPacote());
            pstm.setInt(4, promocao.getIdPromocao());
            

            pstm.execute();
            
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if(pstm != null){
                    pstm.close();
                }
                if (conn != null){
                    conn.close();
                }
            } catch (Exception e){
                e.printStackTrace();
            }
        }
    } 
    
    // Exibição de Dados
     public List<Promocoes> getAllPromocao() {
        String sql = "SELECT * FROM promocoes";
        
        List<Promocoes> promocoes= new ArrayList<Promocoes>();

        Connection conn = null;
        PreparedStatement pstm = null;
        ResultSet rset = null;

        try {
            conn = ConnectionFactory.createConnectionToMySQL();
            pstm = conn.prepareStatement(sql);
            rset = pstm.executeQuery();
           
            while (rset.next()) {

                Promocoes promocao = new Promocoes();
                
                promocao.setIdPromocao(rset.getInt("id_promocao"));
                promocao.setDesconto(rset.getDouble("desconto"));
                promocao.setValidadePromocao((LocalDateTime) rset.getObject("validade_promocao"));
                promocao.setPacote(rset.getString("pacote"));
                promocoes.add(promocao);

            }
            
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if(rset != null){
                    rset.close();
                }
                if (pstm != null){
                    pstm.close();
                }
                if (conn != null){
                    conn.close();
                }
            } catch (Exception e){
                e.printStackTrace();
            }
        }
        return promocoes;
    }
     
     // Obter Promoção por ID
     public Promocoes getPromocaoById(int id) {
        String sql = "SELECT * FROM promocoes WHERE id_promocao = ?";
        Promocoes promocao = null;

        Connection conn = null;
        PreparedStatement pstm = null;
        ResultSet rset = null;

        try {
            conn = ConnectionFactory.createConnectionToMySQL();
            pstm = conn.prepareStatement(sql);
            pstm.setInt(1, id);
            rset = pstm.executeQuery();

            if (rset.next()) {
                promocao = new Promocoes();
                promocao.setIdPromocao(rset.getInt("id_promocao"));
                promocao.setDesconto(rset.getDouble("desconto"));
                promocao.setValidadePromocao(rset.getTimestamp("validade_promocao").toLocalDateTime());
                promocao.setPacote(rset.getString("pacote"));
                
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
        return promocao;
    }
}
