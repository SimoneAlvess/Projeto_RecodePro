<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Destinos | DestinoFácil</title>
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
      <div class="container my-5">
        <!-- Início Modal Cadastrar -->
        <button type="button" class="btn btnGroup mb-3" data-bs-toggle="modal" data-bs-target="#destinoModal">Novo Destino</button>
        <div class="modal fade" id="destinoModal" tabindex="-1" aria-labelledby="modalLabel" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header bgForms position-relative">
                <h1 class="modal-title fs-4" id="modalLabel">Cadastro Destino</h1>
                <button type="button" class="btn-close btn-close-white mx-3 my-3 position-absolute top-0 end-0" data-bs-dismiss="modal"
                  aria-label="Close"></button>
              </div>
              <div class="modal-body">
                <!-- Início Form Cadastrar -->
                <form action="./destino-create">
                  <div class="form-floating mt-4 mb-3 mx-3">
                    <input class="form-control" type="text" id="destino" name="destino" placeholder="#" />
                    <label for="destino">Destino</label>
                  </div>
                  <div class="form-floating mt-4 mb-3 mx-3">
                    <input class="form-control" type="number" step="0.01" id="preco" name="preco" placeholder="#" />
                    <label for="preco">Preço</label>
                  </div>
                  <div class="mt-4 mx-3">
                    <select class="form-select py-3" id="transporte" name="transporte">
                      <option selected>Escolha Transporte</option>
                      <option value="Aéreo" ${destino.transporte == 'Aéreo' ? 'selected' : ''}>Aéreo</option>
                      <option value="Rodoviário" ${destino.transporte == 'Rodoviário' ? 'selected' : ''}>Rodoviário</option>
                    </select>
                  </div>
                  <div class="mb-4 mx-3">
                    <label for="promocao"></label>
                    <select class="form-select py-3" id="promocao" name="promocao">
                      <option selected>Escolha uma Promoção</option>
                      <jstl:forEach items="${listaPromocao}" var="promocao">
                        <option value="${promocao.idPromocao}">Pacote: ${promocao.pacote} - Desconto: ${promocao.desconto}</option>
                      </jstl:forEach>
                    </select>
                  </div>
                  <div class="mx-3 mb-4">
                    <button class="btn btnGroup" type="submit">Cadastrar</button>
                    <a href="./destino" class="btn btnGroupTwo">Cancelar</a>
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
            <h5>Listagem Destinos</h5>
          </div>
          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-hover table-borderless">
                <thead>
                  <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Destino</th>
                    <th scope="col">Transporte</th>
                    <th scope="col">Pacote</th>
                    <th scope="col">Desconto</th>
                    <th scope="col">Validade Promoção</th>
                    <th scope="col">Preço</th>
                    <th scope="col">Preço com Desconto</th>
                    <th scope="col">Opções</th>
                  </tr>
                </thead>
                <tbody>
                  <jstl:forEach items="${listaDestinos}" var="destino">
                    <tr>
                      <td>${destino.idDestino}</td>
                      <td>${destino.destino}</td>
                      <td>${destino.transporte}</td>
                      <td>${destino.promocao.pacote}</td>
                      <td>${destino.promocao.desconto}%</td>
                      <td>${destino.promocao.validadePromocao}</td>
                      <td>R$ <fmt:formatNumber value="${destino.preco}" type="number" minFractionDigits="2" /></td>
                      <td>R$ <fmt:formatNumber value="${destino.precoTotal}" type="number" minFractionDigits="2" /></td>
                      <td>
                        <div class="d-flex">
                          <!-- Início Modal Editar -->
                          <a data-bs-toggle="modal" data-bs-target="#destinoModalEdit-${destino.idDestino}" class="mx-1" title="Editar"> <i
                            class="bi bi-pencil-square iconEdit fs-4"></i></a>
                          <div class="modal fade" id="destinoModalEdit-${destino.idDestino}" tabindex="-1" aria-labelledby="modalLabelEdit"
                            aria-hidden="true">
                            <div class="modal-dialog">
                              <div class="modal-content">
                                <div class="modal-header bgForms position-relative">
                                  <h1 class="modal-title fs-4" id="modalLabelEdit">Editar Destino</h1>
                                  <button type="button" class="btn-close btn-close-white mx-3 my-3 position-absolute top-0 end-0"
                                    data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                  <!-- Início Form Editar -->
                                  <form action="./destino-update">
                                    <div class="form-floating mt-4 mb-3">
                                      <input class="form-control" type="hidden" id="id" name="id" value="${destino.idDestino}" placeholder="#">
                                    </div>
                                    <div class="form-floating mt-4 mb-3 mx-3">
                                      <input class="form-control" type="text" id="destino" name="destino" value="${destino.destino}" placeholder="#">
                                      <label for="destino">Destino</label>
                                    </div>
                                    <div class="form-floating mt-4 mb-3 mx-3">
                                      <input class="form-control" type="number" step="0.01" id="preco" name="preco" value="${destino.preco}"
                                        placeholder="#">
                                      <label for="preco">Preço</label>
                                    </div>
                                    <div class="form-floating mt-4 mx-3">
                                      <select class="form-select" id="transporte" name="transporte">
                                        <jstl:if test="${destino.transporte == 'Aéreo' || destino.transporte == 'Aereo'}">
                                          <option value="Aéreo" selected>Aéreo</option>
                                          <option value="Rodoviário">Rodoviário</option>
                                        </jstl:if>
                                        <jstl:if test="${destino.transporte == 'Rodoviário'}">
                                          <option value="Aéreo">Aéreo</option>
                                          <option value="Rodoviário" selected>Rodoviário</option>
                                        </jstl:if>
                                      </select>
                                      <label for="transporte">Transporte</label>
                                    </div>
                                    <div class="mb-4 mx-3">
                                      <label for="promocao"></label>
                                      <select class="form-select py-3" id="promocao" name="promocao">
                                        <option value="DEFAULT">Pacote: ${destino.promocao.pacote} - Desconto: ${destino.promocao.desconto}</option>
                                        <jstl:forEach items="${listaPromocao}" var="promocao">
                                          <option value="${promocao.idPromocao}">Pacote: ${promocao.pacote} - Desconto: ${promocao.desconto}</option>
                                        </jstl:forEach>
                                      </select>
                                    </div>
                                    <div class="mx-3 mb-4">
                                      <button class="btn btnGroup" type="submit">Editar</button>
                                      <a href="./destino" class="btn btnGroupTwo">Cancelar</a>
                                    </div>
                                  </form>
                                  <!-- Fim Form Editar -->
                                </div>
                              </div>
                            </div>
                          </div>
                          <!-- Fim Modal Editar -->
                          <!-- Excluir Cliente -->
                          <a href="destino-delete?id=${destino.idDestino}" class="mx-1" title="Excluir"
                            onclick="return confirm('Deseja excluir o destino ${destino.destino}?')"> <i
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