<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Compras | DestinoFácil</title>
<!-- CSS -->
<link rel="stylesheet" type="text/css" href="./assets/css/style.css">
<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
  integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<!-- Bootstrap icons -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<!-- Favicon -->
<link rel="shortcut icon" href="assets/imagens/favicon_destinofacil.png" type="image/png">
</head>
<body>
  <!-- Início Navbar -->
  <header>
    <jsp:include page="../../components/menu.jsp">
      <jsp:param name="home" value="./" />
      <jsp:param name="cliente" value="cliente" />
      <jsp:param name="destino" value="destino" />
      <jsp:param name="promocao" value="promocao" />
      <jsp:param name="compra" value="compra" />
    </jsp:include>
  </header>
  <!-- Fim Navbar -->
  <!-- Início Corpo página -->
  <main>
    <section>
      <div class="container my-5 px-2">
        <!-- Início Modal Cadastrar -->
        <button type="button" class="btn btnGroup mb-3" data-bs-toggle="modal" data-bs-target="#compraModal">Nova Compra</button>
        <div class="modal fade" id="compraModal" tabindex="-1" aria-labelledby="modalLabel" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header bgForms position-relative">
                <h1 class="modal-title fs-4" id="modalLabel">Cadastro Compra</h1>
                <button type="button" class="btn-close btn-close-white mx-3 my-3 position-absolute top-0 end-0" data-bs-dismiss="modal"
                  aria-label="Close"></button>
              </div>
              <div class="modal-body">
                <!-- Início Form Cadastrar -->
                <form action="./compra-create">
                  <div class="mx-3 mt-4">
                    <select class="form-select py-3" id="cliente" name="cliente">
                      <option value="DEFAULT">Escolha um Cliente</option>
                      <jstl:forEach items="${listaClientes}" var="cliente">
                        <option value="${cliente.idCliente}">${cliente.nome}</option>
                      </jstl:forEach>
                    </select>
                  </div>
                  <div class="mb-4 mx-3">
                    <label for="destino"></label>
                    <select class="form-select py-3" id="destino" name="destino">
                      <option value="DEFAULT">Escolha um Destino</option>
                      <jstl:forEach items="${listaDestinos}" var="destino">
                        <option value="${destino.idDestino}">${destino.destino}-R$
                          <fmt:formatNumber value="${destino.precoTotal}" type="number" minFractionDigits="2" /></option>
                      </jstl:forEach>
                    </select>
                  </div>
                  <div class="mt-4 mx-3">
                    <select class="form-select py-3" id="formaPagamento" name="formaPagamento">
                      <option selected>Escolha Forma de Pagamento</option>
                      <option value="Crédito" ${compra.formaPagamento == 'Crédito' ? 'selected' : ''}>Crédito</option>
                      <option value="Débito" ${compra.formaPagamento == 'Débito' ? 'selected' : ''}>Débito</option>
                    </select>
                  </div>
                  <div class="form-floating mt-4 mb-4 mx-3">
                    <input class="form-control" type="datetime-local" id="dataHoraViagem" name="dataHoraViagem" placeholder="#">
                    <label for="dataHoraViagem">Data-Hora da Viagem</label>
                  </div>
                  <div class="mx-3 mb-4">
                    <button class="btn btnGroup" type="submit">Cadastrar</button>
                    <a href="./compra" class="btn btnGroupTwo">Cancelar</a>
                  </div>
                </form>
                <!-- Fim Form Cadastrar -->
              </div>
            </div>
          </div>
        </div>
        <!-- Fim Modal Cadastrar -->
        <!-- Início Table -->
        <div class="card border-0 shadow">
          <div class="card-header p-4 border-0">
            <h5>Listagem Compras</h5>
          </div>
          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-hover table-borderless">
                <thead>
                  <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Cliente</th>
                    <th scope="col">Destino</th>
                    <th scope="col">Forma de Pagamento</th>
                    <th scope="col">Valor da Compra</th>
                    <th scope="col">Data-Hora Viagem</th>
                    <th scope="col">Opções</th>
                  </tr>
                </thead>
                <tbody>
                  <jstl:forEach items="${listaCompras}" var="compra">
                    <tr>
                      <td>${compra.idCompra}</td>
                      <td>${compra.cliente.nome}</td>
                      <td>${compra.destino.destino}</td>
                      <td>${compra.formaPagamento}</td>
                      <td>R$ <fmt:formatNumber value="${compra.destino.precoTotal}" type="number" minFractionDigits="2" /></td>
                      <td>${compra.dataHoraViagem}</td>
                      <td>
                        <div class="d-flex">
                          <!-- Início Modal Editar -->
                          <a data-bs-toggle="modal" data-bs-target="#compraModalEdit-${compra.idCompra}" class="mx-1" title="Editar"> <i
                            class="bi bi-pencil-square iconEdit fs-4"></i></a>
                          <div class="modal fade" id="compraModalEdit-${compra.idCompra}" tabindex="-1" aria-labelledby="modalLabelEdit"
                            aria-hidden="true">
                            <div class="modal-dialog">
                              <div class="modal-content">
                                <div class="modal-header bgForms position-relative">
                                  <h1 class="modal-title fs-4" id="modalLabelEdit">Editar Compra</h1>
                                  <button type="button" class="btn-close btn-close-white mx-3 my-3 position-absolute top-0 end-0"
                                    data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                  <!-- Início Form Editar -->
                                  <form action="./compra-update">
                                    <div class="form-floating mt-4 mb-3">
                                      <input class="form-control" type="hidden" id="id" name="id" value="${compra.idCompra}" placeholder="#">
                                    </div>
                                    <div class="form-floating mt-4 mx-3">
                                      <select class="form-select" id="cliente" name="cliente">
                                        <option value="DEFAULT">${compra.cliente.nome}</option>
                                        <jstl:forEach items="${listaClientes}" var="cliente">
                                          <option value="${cliente.idCliente}">${cliente.nome}</option>
                                        </jstl:forEach>
                                      </select>
                                      <label for="cliente">Cliente</label>
                                    </div>
                                    <div class="form-floating  mt-4 mx-3">
                                      <select class="form-select" id="destino" name="destino">
                                        <option value="DEFAULT">${compra.destino.destino}-R$ ${compra.destino.precoTotal}</option>
                                        <jstl:forEach items="${listaDestinos}" var="destino">
                                          <option value="${destino.idDestino}">${destino.destino}-R$
                                            <fmt:formatNumber value="${destino.precoTotal}" type="number" minFractionDigits="2" /></option>
                                        </jstl:forEach>
                                      </select>
                                      <label for="destino">Destino</label>
                                    </div>
                                    <div class="form-floating mt-4 mx-3">
                                      <select class="form-select" id="formaPagamento" name="formaPagamento">
                                        <jstl:if test="${compra.formaPagamento == 'Crédito' || compra.formaPagamento == 'Credito'}">
                                          <option value="Crédito" selected>Crédito</option>
                                          <option value="Débito">Débito</option>
                                        </jstl:if>
                                        <jstl:if test="${compra.formaPagamento == 'Débito' || compra.formaPagamento == 'Debito'}">
                                          <option value="Crédito">Crédito</option>
                                          <option value="Débito" selected>Débito</option>
                                        </jstl:if>
                                      </select>
                                      <label for="formaPagamento">Forma de Pagamento</label>
                                    </div>
                                    <div class="form-floating mb-4 mt-4 mx-3">
                                      <input class="form-control" type="datetime-local" id="dataHoraViagem" name="dataHoraViagem"
                                        value="${compra.dataHoraViagem}" placeholder="#">
                                      <label for="dataHoraViagem">Data-Hora da Viagem</label>
                                    </div>
                                    <div class="mx-3 mb-4">
                                      <button class="btn btnGroup" type="submit">Editar</button>
                                      <a href="./compra" class="btn btnGroupTwo">Cancelar</a>
                                    </div>
                                  </form>
                                  <!-- Fim Form Editar -->
                                </div>
                              </div>
                            </div>
                          </div>
                          <!-- Fim Modal Editar -->
                          <!-- Excluir Cliente -->
                          <a href="compra-delete?id=${compra.idCompra}" class="mx-1" title="Excluir"
                            onclick="return confirm('Deseja excluir a compra do(a) cliente ${compra.cliente.nome}?')"> <i
                            class="bi bi-x-octagon-fill iconDelete fs-4"></i>
                          </a>
                        </div>
                      </td>
                    </tr>
                  </jstl:forEach>
                </tbody>
              </table>
            </div>
          </div>
        </div>
        <!-- Fim Table -->
      </div>
    </section>
  </main>
  <!-- Fim Corpo Página -->
  <!-- Início do rodapé -->
  <footer class="customFooter">
    <div class="container pt-2 d-flex justify-content-between align-items-center">
      <p>&copy; 2023 DestinoFácil. Todos os direitos reservados.</p>
      <div class="d-flex align-items-center pb-3">
        <i class="bi bi-facebook fs-6 pe-2 iconSocial"></i> <i class="bi bi-instagram fs-6 pe-2 iconSocial"></i> <i
          class="bi bi-twitter fs-6 iconSocial"></i>
      </div>
    </div>
  </footer>
  <!-- Fim do rodapé -->
  <!-- Javascript -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>