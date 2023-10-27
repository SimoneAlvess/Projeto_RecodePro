<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Promoções | DestinoFácil</title>
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
      <jsp:param name="home" value="./index.jsp" />
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
      <div class="container my-5 px-4">
        <!-- Início Modal Cadastrar -->
        <button type="button" class="btn btnGroup mb-3" data-bs-toggle="modal" data-bs-target="#promocaoModal">Nova Promoção</button>
        <div class="modal fade" id="promocaoModal" tabindex="-1" aria-labelledby="modalLabel" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header bgForms position-relative">
                <h1 class="modal-title fs-4" id="modalLabel">Cadastro Promoção</h1>
                <button type="button" class="btn-close btn-close-white mx-3 my-3 position-absolute top-0 end-0" data-bs-dismiss="modal"
                  aria-label="Close"></button>
              </div>
              
              <div class="modal-body">
                <!-- Início Form Cadastrar -->
                <form action="./promocao-create">
                
                  <div class="form-floating mt-4 mb-3 mx-3">
                    <input class="form-control" type="number" step="0.01" id="desconto" name="desconto" placeholder="#" />
                    <label for="desconto">Desconto</label>
                  </div>
                  
                  <div class="mt-4 mx-3">
                    <select class="form-select py-3" id="pacote" name="pacote">
                      <option selected>Escolha um Pacote</option>
                      <option value="Nacional" ${promocao.pacote == 'Nacional' ? 'selected' : ''}>Nacional</option>
                      <option value="Internacional" ${promocao.pacote == 'Internacional' ? 'selected' : ''}>Internacional</option>
                    </select>
                  </div>
                  
                  <div class="form-floating my-4 mx-3">
                    <input class="form-control" type="datetime-local" id="validadepromo" name="validadepromo" placeholder="#" />
                    <label for="validadepromo">Validade Promoção</label>
                  </div>
                  
                  <div class="mx-3 mb-4">
                    <button class="btn btnGroup" type="submit">Cadastrar</button>
                    <a href="./promocao" class="btn btnGroupTwo">Cancelar</a>
                  </div>
                  
                </form>
                <!-- Fim Form Cadastrar -->
              </div>
            </div>
          </div>
        </div>
        <!-- Fim Modal Cadastrar -->
        
        <!-- Início Table -->
        <table class="table table-hover">
          <thead class="table-light">
            <tr>
              <th scope="col">ID</th>
              <th scope="col">Pacote</th>
              <th scope="col">Desconto</th>
              <th scope="col">Validade Promoção</th>
              <th scope="col">Opções</th>
            </tr>
          </thead>
          <tbody>
            <jstl:forEach items="${listaPromocoes}" var="promocao">
              <tr>
                <td>${promocao.idPromocao}</td>
                <td>${promocao.pacote}</td>
                <td>${promocao.desconto}%</td>
                <td>${promocao.validadePromocao}</td>
                <td>
                  <div class="d-flex">
                    <!-- Início Modal Editar -->
                    <a data-bs-toggle="modal" data-bs-target="#promocaoModalEdit-${promocao.idPromocao}" class="mx-1" title="Editar"> <i
                      class="bi bi-pencil-square iconEdit fs-4"></i></a>
                    <div class="modal fade" id="promocaoModalEdit-${promocao.idPromocao}" tabindex="-1" aria-labelledby="modalLabelEdit"
                      aria-hidden="true">
                      <div class="modal-dialog">
                        <div class="modal-content">
                          <div class="modal-header bgForms position-relative">
                            <h1 class="modal-title fs-4" id="modalLabelEdit">Editar Promoção</h1>
                            <button type="button" class="btn-close btn-close-white mx-3 my-3 position-absolute top-0 end-0" data-bs-dismiss="modal"
                              aria-label="Close"></button>
                          </div>
                          
                          <div class="modal-body">
                           <!-- Início Form Editar -->
                            <form action="./promocao-update">
                            
                              <div class="form-floating mt-4 mb-3">
                                <input class="form-control" type="hidden" id="id" name="id" value="${promocao.idPromocao}" placeholder="#">
                              </div>
                              
                              <div class="form-floating mt-4 mb-3 mx-3">
                                <input class="form-control" type="number" step="0.01" id="desconto" name="desconto" value="${promocao.desconto}"
                                  placeholder="#" />
                                <label for="desconto">Desconto</label>
                              </div>
                              
                              <div class="form-floating mt-4 mx-3">
                                <select class="form-select" id="pacote" name="pacote">
                                  <jstl:if test="${promocao.pacote == 'Nacional'}">
                                    <option value="Nacional" selected>Nacional</option>
                                    <option value="Internacional">Internacional</option>
                                  </jstl:if>
                                  <jstl:if test="${promocao.pacote == 'Internacional'}">
                                    <option value="Nacional">Nacional</option>
                                    <option value="Internacional" selected>Internacional</option>
                                  </jstl:if>
                                </select>
                                <label for="pacote">Pacote</label>
                              </div>
                              
                              <div class="form-floating my-4 mx-3">
                                <input class="form-control" type="datetime-local" id="validadepromo" name="validadepromo"
                                  value="${promocao.validadePromocao}" placeholder="#" />
                                <label for="validadepromo">Validade Promoção</label>
                              </div>
                              
                              <div class="mx-3 mb-4">
                                <button class="btn btnGroup" type="submit">Editar</button>
                                <a href="./promocao" class="btn btnGroupTwo">Cancelar</a>
                              </div>
                              
                            </form>
                            <!-- Fim Form Editar -->
                          </div>
                        </div>
                      </div>
                    </div>
                    <!-- Fim Modal Editar -->
                    
                    <!-- Excluir Cliente -->
                    <a href="promocao-delete?id=${promocao.idPromocao}" class="mx-1" title="Excluir"
                      onclick="return confirm('Deseja excluir pacote promocional ${promocao.pacote}?')"> <i
                      class="bi bi-x-octagon-fill iconDelete fs-4"></i>
                    </a>
                  </div>
                </td>
              </tr>
            </jstl:forEach>
          </tbody>
        </table>
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