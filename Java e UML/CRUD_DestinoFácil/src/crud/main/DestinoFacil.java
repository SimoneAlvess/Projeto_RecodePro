package crud.main;

//Importações
import crud.DAO.ClientesDAO;
import crud.DAO.CompraDAO;
import crud.DAO.DestinosDAO;
import crud.DAO.PromocoesDAO;
import crud.model.Clientes;
import crud.model.Compra;
import crud.model.Destinos;
import crud.model.Promocoes;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Scanner;

public class DestinoFacil {

    public static void main(String[] args) {
        // Instâncias dos DAOs
        ClientesDAO clientesDAO = new ClientesDAO();
        DestinosDAO destinosDAO = new DestinosDAO();
        CompraDAO compraDAO = new CompraDAO();
        PromocoesDAO promocoesDAO = new PromocoesDAO();

        Scanner digitar = new Scanner(System.in);

        // Programa Principal
        while (true) {
            System.out.println("-----------------------------");
            System.out.println("        DestinoFácil         ");
            System.out.println("-----------------------------");
            System.out.println("[1] Inserir");
            System.out.println("[2] Atualizar");
            System.out.println("[3] Listar");
            System.out.println("[4] Deletar");
            System.out.println("[5] Finalizar Programa");
            System.out.print("Escolha uma opção: ");

            int opcao = digitar.nextInt();

            switch (opcao) {

                // Insert
                case 1:
                    System.out.println("-----------------------------");
                    System.out.println("           Inserir           ");
                    System.out.println("-----------------------------");
                    System.out.println("[1] Clientes");
                    System.out.println("[2] Destinos");
                    System.out.println("[3] Promoção");
                    System.out.println("[4] Compra");
                    System.out.print("Escolha a tabela: ");
                    int tblInserir = digitar.nextInt();
                    digitar.nextLine();

                    switch (tblInserir) {
                        case 1:
                            System.out.println("-----------------------------");
                            System.out.println("       Inserir Clientes      ");
                            System.out.println("-----------------------------");
                            System.out.print("Nome: ");
                            String nomeCliente = digitar.nextLine();
                            System.out.print("Email: ");
                            String emailCliente = digitar.nextLine();
                            System.out.print("Senha: ");
                            String senhaCliente = digitar.nextLine();

                            Clientes novoCliente = new Clientes(nomeCliente, emailCliente, senhaCliente);

                            // Inserir cliente no banco de dados
                            clientesDAO.insertCliente(novoCliente);

                            System.out.println("Cliente inserido com sucesso!");
                            break;

                        case 2:
                            System.out.println("-----------------------------");
                            System.out.println("       Inserir Destinos      ");
                            System.out.println("-----------------------------");
                            System.out.print("Destino: ");
                            String nomeDestino = digitar.nextLine();
                            System.out.print("Preço: ");
                            double precoDestino = digitar.nextDouble();
                            digitar.nextLine();
                            System.out.print("Transporte: ");
                            String transporteDestino = digitar.nextLine();
                            System.out.print("ID da promoção: ");
                            int promo = digitar.nextInt();
                            Promocoes promocaoId = promocoesDAO.getPromocaoById(promo);
                            if (promocaoId != null) {
                                Destinos novoDestino = new Destinos(nomeDestino, precoDestino, transporteDestino, promocaoId);

                                // Inserir destino no banco de dados
                                destinosDAO.insertDestino(novoDestino);

                                System.out.println("Destino inserido com sucesso!");
                            }
                            break;

                        case 3:
                            System.out.println("-----------------------------");
                            System.out.println("       Inserir Promoção      ");
                            System.out.println("-----------------------------");
                            System.out.print("Desconto: ");
                            double descontoPromo = digitar.nextDouble();
                            digitar.nextLine();
                            System.out.print("Validade da Promoção [formato yyyy-MM-dd HH:mm:ss]: ");
                            String validadePromocao = digitar.nextLine();
                            DateTimeFormatter formato1 = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
                            LocalDateTime validadePromo = LocalDateTime.parse(validadePromocao, formato1);
                            System.out.print("Pacote: ");
                            String pacotePromo = digitar.nextLine();

                            Promocoes novaPromocao = new Promocoes(descontoPromo, validadePromo, pacotePromo);

                            // Inserir promoção no banco de dados
                            promocoesDAO.insertPromocao(novaPromocao);

                            System.out.println("Promoção inserida com sucesso!");
                            break;

                        case 4:
                            System.out.println("-----------------------------");
                            System.out.println("        Inserir Compra       ");
                            System.out.println("-----------------------------");
                            System.out.print("Data e hora da viagem [formato yyyy-MM-dd HH:mm:ss]: ");
                            String dataHoraV = digitar.nextLine();
                            DateTimeFormatter formato2 = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
                            LocalDateTime dataHoraViagem = LocalDateTime.parse(dataHoraV, formato2);
                            System.out.print("Forma de Pagamento: ");
                            String formaPag = digitar.nextLine();
                            System.out.print("ID Cliente: ");
                            int idCliente = digitar.nextInt();
                            Clientes cliente = clientesDAO.getClienteById(idCliente);
                            System.out.print("ID Destino: ");
                            int idDestino = digitar.nextInt();
                            Destinos destino = destinosDAO.getDestinoById(idDestino);

                            if (cliente != null && destino != null) {
                                Compra novaCompra = new Compra(dataHoraViagem, formaPag, cliente, destino);

                                // Inserir compra no banco de dados
                                compraDAO.insertCompra(novaCompra);

                                System.out.println("Compra inserida com sucesso!");
                            } else {
                                System.out.println("ID não corresponde a nenhum cliente ou destino");
                            }
                            break;
                        default:
                            System.out.println("Opção Inválida!");
                            break;
                    }
                    break;

                // Update
                case 2:
                    System.out.println("-----------------------------");
                    System.out.println("           Atualizar         ");
                    System.out.println("-----------------------------");
                    System.out.println("[1] Clientes");
                    System.out.println("[2] Destinos");
                    System.out.println("[3] Promoção");
                    System.out.println("[4] Compra");
                    System.out.print("Escolha a tabela: ");
                    int tblAtualizar = digitar.nextInt();
                    digitar.nextLine();

                    switch (tblAtualizar) {
                        case 1:
                            System.out.println("-----------------------------");
                            System.out.println("      Atualizar Clientes     ");
                            System.out.println("-----------------------------");
                            System.out.print("ID do cliente: ");
                            int clienteId = digitar.nextInt();
                            digitar.nextLine();
                            System.out.print("Nome: ");
                            String nomeCliente = digitar.nextLine();
                            System.out.print("Email: ");
                            String emailCliente = digitar.nextLine();
                            System.out.print("Senha: ");
                            String senhaCliente = digitar.nextLine();

                            Clientes upCliente = new Clientes(nomeCliente, emailCliente, senhaCliente, clienteId);

                            // Atualizar cliente no banco de dados
                            clientesDAO.updateCliente(upCliente);

                            System.out.println("Cliente atualizado com sucesso!");
                            break;

                        case 2:
                            System.out.println("-----------------------------");
                            System.out.println("      Atualizar Destinos     ");
                            System.out.println("-----------------------------");
                            System.out.print("ID do destino: ");
                            int destinoId = digitar.nextInt();
                            digitar.nextLine();
                            System.out.print("Destino: ");
                            String nomeDestino = digitar.nextLine();
                            System.out.print("Preço: ");
                            double precoDestino = digitar.nextDouble();
                            digitar.nextLine();
                            System.out.print("Transporte: ");
                            String transporteDestino = digitar.nextLine();
                            System.out.print("ID da promoção: ");
                            int promo = digitar.nextInt();
                            Promocoes promocaoId = promocoesDAO.getPromocaoById(promo);
                            
                            if (promocaoId != null) {
                                Destinos upDestino = new Destinos(destinoId, nomeDestino, precoDestino, transporteDestino, promocaoId);
                            
                            // Atualizar destino no banco de dados
                            destinosDAO.updateDestino(upDestino);

                            System.out.println("Destino atualizado com sucesso!");
                            }
                            break;

                        case 3:
                            System.out.println("-----------------------------");
                            System.out.println("      Atualizar Promoção     ");
                            System.out.println("-----------------------------");
                            System.out.print("ID da promoção: ");
                            int promoId = digitar.nextInt();
                            System.out.print("Desconto: ");
                            double descontoPromo = digitar.nextDouble();
                            digitar.nextLine();
                            System.out.print("Validade da Promoção [formato yyyy-MM-dd HH:mm:ss]: ");
                            String validadePromocao = digitar.nextLine();
                            DateTimeFormatter formato1 = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
                            LocalDateTime validadePromo = LocalDateTime.parse(validadePromocao, formato1);
                            System.out.print("Pacote: ");
                            String pacotePromo = digitar.nextLine();
                           
                            Promocoes upPromocao = new Promocoes(promoId, descontoPromo, validadePromo, pacotePromo);

                            // Inserir promoção no banco de dados
                            promocoesDAO.updatePromocao(upPromocao);

                            System.out.println("Promoção atualizada com sucesso!");
                            break;

                        case 4:
                            System.out.println("-----------------------------");
                            System.out.println("      Atualizar Compra       ");
                            System.out.println("-----------------------------");
                            System.out.print("ID da compra: ");
                            int compraId = digitar.nextInt();
                            digitar.nextLine();
                            System.out.print("Data e hora da viagem [formato yyyy-MM-dd HH:mm:ss]: ");
                            String dataHoraV = digitar.nextLine();
                            DateTimeFormatter formato2 = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
                            LocalDateTime dataHoraViagem = LocalDateTime.parse(dataHoraV, formato2);
                            System.out.print("Forma de Pagamento: ");
                            String formaPag = digitar.nextLine();
                            System.out.print("ID Cliente: ");
                            int idCliente = digitar.nextInt();
                            Clientes cliente = clientesDAO.getClienteById(idCliente);
                            System.out.print("ID Destino: ");
                            int idDestino = digitar.nextInt();
                            Destinos destino = destinosDAO.getDestinoById(idDestino);
                           
                            if (cliente != null && destino != null) {
                                Compra upCompra = new Compra(compraId, dataHoraViagem, formaPag, cliente, destino);

                                // Inserir compra no banco de dados
                                compraDAO.updateCompra(upCompra);

                                System.out.println("Compra atualizada com sucesso!");
                            } else {
                                System.out.println("ID não corresponde a nenhum cliente ou destino");
                            }
                            break;
                        default:
                            System.out.println("Opção Inválida!");
                            break;
                    }
                    break;

                // Select
                case 3:
                    System.out.println("-----------------------------");
                    System.out.println("            Listar           ");
                    System.out.println("-----------------------------");
                    System.out.println("[1] Clientes");
                    System.out.println("[2] Destinos");
                    System.out.println("[3] Promoção");
                    System.out.println("[4] Compra");
                    System.out.print("Escolha a tabela: ");
                    int tblSelecionar = digitar.nextInt();
                    digitar.nextLine();

                    switch (tblSelecionar) {
                        case 1:
                            System.out.println("-----------------------------");
                            System.out.println("       Listar Clientes       ");
                            System.out.println("-----------------------------");
                            for (Clientes cliente : clientesDAO.getAllClientes()) {
                                System.out.println("ID do cliente: " + cliente.getIdCliente());
                                System.out.println("Nome: " + cliente.getNome());
                                System.out.println("Email: " + cliente.getEmail());
                                System.out.println("Senha: " + cliente.getSenha());
                                System.out.println("");
                            }
                            break;

                        case 2:
                            System.out.println("-----------------------------");
                            System.out.println("       Listar Destinos       ");
                            System.out.println("-----------------------------");
                            for (Destinos destino : destinosDAO.getAllDestinos()) {
                                System.out.println("ID do destino: " + destino.getIdDestino());
                                System.out.println("Destino: " + destino.getDestino());
                                System.out.println("Preco: " + destino.getPreco());
                                System.out.println("Transporte: " + destino.getTransporte());
                                System.out.println("ID da promoção: " + destino.getPromocao().getIdPromocao());
                                System.out.println("");
                            }
                            break;

                        case 3:
                            System.out.println("-----------------------------");
                            System.out.println("       Listar Promoções      ");
                            System.out.println("-----------------------------");
                            for (Promocoes promocao : promocoesDAO.getAllPromocao()) {
                                System.out.println("ID da Promoção: " + promocao.getIdPromocao());
                                System.out.println("Desconto: " + promocao.getDesconto());
                                System.out.println("Validade da Promoção: " + promocao.getValidadePromocao());
                                System.out.println("Pacote: " + promocao.getPacote());
                                System.out.println("");
                            }
                            break;

                        case 4:
                            System.out.println("-----------------------------");
                            System.out.println("        Listar Compra        ");
                            System.out.println("-----------------------------");
                            for (Compra compra : compraDAO.getAllCompra()) {
                                System.out.println("ID da compra: " + compra.getIdCompra());
                                System.out.println("Data e hora da viagem: " + compra.getDataHoraViagem());
                                System.out.println("Forma de pagamento: " + compra.getFormaPagamento());
                                System.out.println("ID Cliente: " + compra.getCliente().getIdCliente());
                                System.out.println("ID Destino: " + compra.getDestino().getIdDestino());
                                System.out.println("");
                            }
                            break;
                        default:
                            System.out.println("*** Opção Inválida! ***");
                            break;
                    }
                    break;

                // Delete
                case 4:
                    System.out.println("-----------------------------");
                    System.out.println("            Deletar          ");
                    System.out.println("-----------------------------");
                    System.out.println("[1] Clientes");
                    System.out.println("[2] Destinos");
                    System.out.println("[3] Promoção");
                    System.out.println("[4] Compra");
                    System.out.print("Escolha a tabela: ");
                    int tblExcluir = digitar.nextInt();
                    digitar.nextLine();

                    switch (tblExcluir) {
                        case 1:
                            System.out.println("-----------------------------");
                            System.out.println("      Deletar Clientes       ");
                            System.out.println("-----------------------------");
                            System.out.print("ID do Cliente que desejar excluir do banco: ");
                            int idClienteDelete = digitar.nextInt();
                            System.out.println("");

                            // Excluir cliente no banco de dados
                            clientesDAO.deleteById(idClienteDelete);

                            System.out.println("*** Cliente excluído com sucesso! ***");
                            break;

                        case 2:
                            System.out.println("-----------------------------");
                            System.out.println("      Deletar Destinos       ");
                            System.out.println("-----------------------------");
                            System.out.print("ID do Destino que desejar excluir do banco: ");
                            int idDestinoDelete = digitar.nextInt();
                            System.out.println("");

                            // Excluir cliente no banco de dados
                            destinosDAO.deleteDestino(idDestinoDelete);

                            System.out.println("*** Destino excluído com sucesso! ***");
                            break;

                        case 3:
                            System.out.println("-----------------------------");
                            System.out.println("      Deletar Promoções      ");
                            System.out.println("-----------------------------");
                            System.out.print("ID da Promoção que desejar excluir do banco: ");
                            int idPromoDelete = digitar.nextInt();
                            System.out.println("");

                            // Excluir cliente no banco de dados
                            promocoesDAO.deletePromocao(idPromoDelete);

                            System.out.println("*** Promoção excluída com sucesso! ***");
                            break;

                        case 4:
                            System.out.println("-----------------------------");
                            System.out.println("       Deletar Compra        ");
                            System.out.println("-----------------------------");
                            System.out.print("ID da Compra que desejar excluir do banco: ");
                            int idCompraDelete = digitar.nextInt();
                            System.out.println("");

                            // Excluir cliente no banco de dados
                            compraDAO.deleteCompra(idCompraDelete);

                            System.out.println("*** Compra excluída com sucesso! ***");
                            break;

                        default:
                            System.out.println("Opção Inválida!");
                            break;
                    }
                    break;

                case 5:
                    System.out.println("*** Programa Finalizado! ***");
                    digitar.close();
                    System.exit(0);
                    break;

                default:
                    System.out.println("*** Opção Inválida! ***");
                    break;
            }
        }
    }
}
