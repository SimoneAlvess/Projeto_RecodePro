package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import connection.ConnectionFactory;
import model.Clientes;
import model.Compra;
import model.Destinos;

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
      String sql = "SELECT c.id_compra, c.data_hora_viagem, c.forma_pagamento, cl.nome, d.destino, d.transporte, d.preco_total " +
                   "FROM compra AS c " +
                   "JOIN clientes AS cl ON c.cliente_id = cl.id_cliente " +
                   "JOIN destinos AS d ON c.destino_id = d.id_destino ";

      List<Compra> compras = new ArrayList<Compra>();

      Connection conn = null;
      PreparedStatement pstm = null;
      ResultSet rset = null;

      try {
          conn = ConnectionFactory.createConnectionToMySQL();
          pstm = conn.prepareStatement(sql);
          rset = pstm.executeQuery();

          while (rset.next()) {
              Compra compra = new Compra();
              compra.setIdCompra(rset.getInt("id_compra"));
              compra.setDataHoraViagem((LocalDateTime) rset.getObject("data_hora_viagem"));
              compra.setFormaPagamento(rset.getString("forma_pagamento"));

              Clientes cliente = new Clientes();
              cliente.setNome(rset.getString("nome"));
              compra.setCliente(cliente);

              Destinos destino = new Destinos();
              destino.setDestino(rset.getString("destino"));
              destino.setTransporte(rset.getString("transporte"));
            	destino.setPrecoTotal(rset.getDouble("preco_total"));

              compra.setDestino(destino);

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
    
 // Obter compra por ID
  	public Compra getCompraById(int id) {
  		String sql = "SELECT * FROM compra WHERE id_compra = ?";
  		Compra compra = null;

  		Connection conn = null;
  		PreparedStatement pstm = null;
  		ResultSet rset = null;

  		try {
  			conn = ConnectionFactory.createConnectionToMySQL();
  			pstm = conn.prepareStatement(sql);
  			pstm.setInt(1, id);
  			rset = pstm.executeQuery();

  			if (rset.next()) {
  				compra = new Compra();
  				compra.setIdCompra(rset.getInt("id_compra"));
  				compra.setDataHoraViagem((LocalDateTime) rset.getObject("data_hora_viagem"));
          compra.setFormaPagamento(rset.getString("forma_pagamento"));

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

  		return compra;
  	}

}
