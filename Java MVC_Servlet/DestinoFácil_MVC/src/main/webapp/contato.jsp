<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Contatos | DestinoFácil</title>
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
    <jsp:include page="./components/menu.jsp">
      <jsp:param name="home" value="./" />
      <jsp:param name="cliente" value="cliente" />
      <jsp:param name="destino" value="destino" />
      <jsp:param name="promocao" value="promocao" />
      <jsp:param name="compra" value="compra" />
    </jsp:include>
  </header>
  <!-- Fim Navbar -->
    <!-- Início -->
    <main class="bgHome">
        <section>
            <div class="container mt-5 mb-5 shadow">
                <div class="row">
                    <div class="col-md-5 p-5 order-sm-first order-last bg-white text-dark">
                        <h2>Nossos Contatos</h2>
                        <p class="fonte">Tem alguma dúvida? Deixe-nos saber. Estamos apenas a um e-mail de distância.
                        </p>
                        <div class="d-flex mt-3 align-items-center">
                            <i class="bi bi-envelope bi-style fs-3"></i>
                            <p class="mt-3 ms-2 fonte">destinofacil@gmail.com.br</p>
                        </div>
                        <div class="d-flex mt-2 align-items-center">
                            <i class="bi bi-telephone bi-style fs-3"></i>
                            <p class="mt-3 ms-2 fonte"> +55 (88)99999-9999</p>
                        </div>
                        <div class="d-flex mt-2 align-items-center">
                            <i class="bi bi-instagram bi-style fs-3"></i>
                            <p class="mt-3 ms-2 fonte">@destinofacil</p>
                        </div>
                        <div class="d-flex mt-2 align-items-center">
                            <i class="bi bi-facebook bi-style fs-3"></i>
                            <p class="mt-3 ms-2 fonte">@agencia_destinofacil</p>
                        </div>
                    </div>

                    <div class="col-md-7 bg-primary p-5 text-white">
                        <h2>Contate-nos</h2>
                        <form method="post" class="row g-3 contactForm mt-4">
                            <div class="col-md-6">
                                <label for="nome" class="form-label">Nome</label>
                                <input type="text" class="form-control" id="nome" required>
                            </div>
                            <div class="col-md-6">
                                <label for="sobrenome" class="form-label">Sobrenome</label>
                                <input type="text" class="form-control" id="sobrenome" required>
                            </div>
                            <div class="col-12">
                                <label for="email" class="form-label">Email</label>
                                <input type="email" class="form-control" id="email">
                            </div>
                            <div class="col-12">
                                <label for="assunto" class="form-label">Assunto</label>
                                <input type="text" class="form-control" id="assunto">
                            </div>
                            <div class="col-mb-3">
                                <label for="mensagem" class="form-label">Mensagem</label>
                                <textarea class="form-control" id="mensagem" rows="3"></textarea>
                            </div>
                            <div class="col-12">
                                <button type="submit" class="btn btn-light text-primary mt-3">Enviar</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
    </main>
    <!-- Fim -->
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