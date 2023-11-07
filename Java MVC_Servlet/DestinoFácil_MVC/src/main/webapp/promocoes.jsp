<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
    <jsp:include page="./components/menu.jsp">
      <jsp:param name="home" value="./" />
      <jsp:param name="cliente" value="cliente" />
      <jsp:param name="destino" value="destino" />
      <jsp:param name="promocao" value="promocao" />
      <jsp:param name="compra" value="compra" />
    </jsp:include>
  </header>
  <!-- Fim Navbar -->
<main>
        <section>
            <div class="container-fluid bgHome shadow rounded-bottom">
                <div class="container text-white text-center promoStyle">
                <h2>Explore o mundo com as nossas promoções imperdíveis</h2>
                <p class="lead">Venha conhecer destinos deslumbrantes. Aventure-se e descubra as melhores ofertas para a sua próxima viagem dos sonhos!</p>
                </div>
            </div>
            <!-- Pacotes nacionais  -->
            <div class="container py-5">
                <h4 class="border-bottom pb-2">Pacotes Nacionais</h4>
                <div class="row g-2">
                    <div class="col-md-3 mt-3">
                        <div class="card shadow">
                             <img src="assets/imagens/riodejaneiro.jpg" class="card-img-top" height="181px" alt="paris">
                            <div class="card-body">
                                <h5 class="card-title">Rio de Janeiro</h5>
                                <div class="d-flex align-items-center">
                                    <i class="bi bi-check2-circle me-2 icon"></i>
                                    <p class="card-text">Aéreo ida e volta</p>
                                </div>
                                <div class="d-flex align-items-center">
                                    <i class="bi bi-check2-circle me-2 icon"></i>
                                    <p class="card-text">05 Diárias</p>
                                </div>
                                <p class="card-text marginParagraph">a partir de</p>
                                <h5>R$ 844,00</h5>
                                <p class="card-text">Em até 10x no cartão</p>
                                <div class="d-flex align-items-center">
                                    <i class="bi bi-patch-check-fill me-2 icon"></i>
                                    <p class="card-text">Desconto 25%</p>
                                </div>
                                <a href="./promocao" class="btn btn-sm btn-primary mt-2">Confira já!</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 mt-3">
                        <div class="card shadow">
                            <img src="assets/imagens/gramado.jpg" class="card-img-top" height="181px" alt="paris">
                            <div class="card-body">
                                <h5 class="card-title">Gramado</h5>
                                <div class="d-flex align-items-center">
                                    <i class="bi bi-check2-circle me-2 icon"></i>
                                    <p class="card-text">Aéreo ida e volta</p>
                                </div>
                                <div class="d-flex align-items-center">
                                    <i class="bi bi-check2-circle me-2 icon"></i>
                                    <p class="card-text">08 Diárias</p>
                                </div>
                                <p class="card-text marginParagraph">a partir de</p>
                                <h5>R$ 824,00</h5>
                                <p class="card-text">Em até 10x no cartão</p>
                                <div class="d-flex align-items-center">
                                    <i class="bi bi-patch-check-fill me-2 icon"></i>
                                    <p class="card-text">Desconto 25%</p>
                                </div>
                                <a href="./promocao" class="btn btn-sm btn-primary mt-2">Confira já!</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 mt-3">
                        <div class="card shadow">
                           <img src="assets/imagens/bonito.jpg" class="card-img-top" height="181px" alt="paris">
                            <div class="card-body">
                                <h5 class="card-title">Beberibe</h5>
                                <div class="d-flex align-items-center">
                                    <i class="bi bi-check2-circle me-2 icon"></i>
                                    <p class="card-text">Aéreo ida e volta</p>
                                </div>
                                <div class="d-flex align-items-center">
                                    <i class="bi bi-check2-circle me-2 icon"></i>
                                    <p class="card-text">06 Diárias</p>
                                </div>
                                <p class="card-text marginParagraph">a partir de</p>
                                <h5>R$ 570,00</h5>
                                <p class="card-text">Em até 10x no cartão</p>
                                <div class="d-flex align-items-center">
                                    <i class="bi bi-patch-check-fill me-2 icon"></i>
                                    <p class="card-text">Desconto 20%</p>
                                </div>
                                <a href="./promocao" class="btn btn-sm btn-primary mt-2">Confira já!</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 mt-3">
                        <div class="card shadow">
                            <img src="assets/imagens/gramado.jpg" class="card-img-top" height="181px" alt="paris">
                            <div class="card-body">
                                <h5 class="card-title">Foz do Iguaçu</h5>
                                <div class="d-flex align-items-center">
                                    <i class="bi bi-check2-circle me-2 icon"></i>
                                    <p class="card-text">Aéreo ida e volta</p>
                                </div>
                                <div class="d-flex align-items-center">
                                    <i class="bi bi-check2-circle me-2 icon"></i>
                                    <p class="card-text">10 Diárias</p>
                                </div>
                                <p class="card-text marginParagraph">a partir de</p>
                                <h5>R$ 911,00</h5>
                                <p class="card-text">Em até 10x no cartão</p>
                                <div class="d-flex align-items-center">
                                    <i class="bi bi-patch-check-fill me-2 icon"></i>
                                    <p class="card-text">Desconto 30%</p>
                                </div>
                                <a href="./promocao" class="btn btn-sm btn-primary mt-2">Confira já!</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 mt-3">
                        <div class="card shadow">
                            <img src="assets/imagens/maragogi.jpg" class="card-img-top" height="181px" alt="paris">
                            <div class="card-body">
                                <h5 class="card-title">Maragogi</h5>
                                <div class="d-flex align-items-center">
                                    <i class="bi bi-check2-circle me-2 icon"></i>
                                    <p class="card-text">Aéreo ida e volta</p>
                                </div>
                                <div class="d-flex align-items-center">
                                    <i class="bi bi-check2-circle me-2 icon"></i>
                                    <p class="card-text"> 07 Diárias</p>
                                </div>
                                <p class="card-text marginParagraph">a partir de</p>
                                <h5>R$ 749,00</h5>
                                <p class="card-text">Em até 10x no cartão</p>
                                <div class="d-flex align-items-center">
                                    <i class="bi bi-patch-check-fill me-2 icon"></i>
                                    <p class="card-text">Desconto 20%</p>
                                </div>
                                <a href="./promocao" class="btn btn-sm btn-primary mt-2">Confira já!</a>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-md-3 mt-3">
                        <div class="card shadow">
                            <img src="assets/imagens/bonito.jpg" class="card-img-top" height="181px" alt="paris">
                            <div class="card-body">
                                <h5 class="card-title">Bonito</h5>
                                <div class="d-flex align-items-center">
                                    <i class="bi bi-check2-circle me-2 icon"></i>
                                    <p class="card-text">Aéreo ida e volta</p>
                                </div>
                                <div class="d-flex align-items-center">
                                    <i class="bi bi-check2-circle me-2 icon"></i>
                                    <p class="card-text"> 05 Diárias</p>
                                </div>
                                <p class="card-text marginParagraph">a partir de</p>
                                <h5>R$ 634,00</h5>
                                <p class="card-text">Em até 10x no cartão</p>
                                <div class="d-flex align-items-center">
                                    <i class="bi bi-patch-check-fill me-2 icon"></i>
                                    <p class="card-text">Desconto 20%</p>
                                </div>
                                <a href="./promocao" class="btn btn-sm btn-primary mt-2">Confira já!</a>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-md-3 mt-3">
                        <div class="card shadow">
                           <img src="assets/imagens/maragogi.jpg" class="card-img-top" height="181px" alt="paris">
                            <div class="card-body">
                                <h5 class="card-title">Capitólio</h5>
                                <div class="d-flex align-items-center">
                                    <i class="bi bi-check2-circle me-2 icon"></i>
                                    <p class="card-text">Aéreo ida e volta</p>
                                </div>
                                <div class="d-flex align-items-center">
                                    <i class="bi bi-check2-circle me-2 icon"></i>
                                    <p class="card-text"> 04 Diárias</p>
                                </div>
                                <p class="card-text marginParagraph">a partir de</p>
                                <h5>R$ 610,00</h5>
                                <p class="card-text">Em até 10x no cartão</p>
                                <div class="d-flex align-items-center">
                                    <i class="bi bi-patch-check-fill me-2 icon"></i>
                                    <p class="card-text">Desconto 20%</p>
                                </div>
                                <a href="./promocao" class="btn btn-sm btn-primary mt-2">Confira já!</a>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-md-3 mt-3">
                        <div class="card shadow">
                            <img src="assets/imagens/bonito.jpg" class="card-img-top" height="181px" alt="paris">
                            <div class="card-body">
                                <h5 class="card-title">Holambra</h5>
                                <div class="d-flex align-items-center">
                                    <i class="bi bi-check2-circle me-2 icon"></i>
                                    <p class="card-text">Aéreo ida e volta</p>
                                </div>
                                <div class="d-flex align-items-center">
                                    <i class="bi bi-check2-circle me-2 icon"></i>
                                    <p class="card-text"> 10 Diárias</p>
                                </div>
                                <p class="card-text marginParagraph">a partir de</p>
                                <h5>R$ 846,00</h5>
                                <p class="card-text">Em até 10x no cartão</p>
                                <div class="d-flex align-items-center">
                                    <i class="bi bi-patch-check-fill me-2 icon"></i>
                                    <p class="card-text">Desconto 25%</p>
                                </div>
                                <a href="./promocao" class="btn btn-sm btn-primary mt-2">Confira já!</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Pacotes internacionais -->
            <div class="container pb-5">
                <h4 class="border-bottom pb-2">Pacotes Internacionais</h4>
                <div class="row g-2">
                    <div class="col-md-3 mt-3">
                        <div class="card shadow">
                           <img src="assets/imagens/novaiorque.jpg" class="card-img-top" height="181px" alt="paris">
                            <div class="card-body">
                                <h5 class="card-title">Nova Iorque</h5>
                                <div class="d-flex align-items-center">
                                    <i class="bi bi-check2-circle me-2 icon"></i>
                                    <p class="card-text">Aéreo ida e volta</p>
                                </div>
                                <div class="d-flex align-items-center">
                                    <i class="bi bi-check2-circle me-2 icon"></i>
                                    <p class="card-text"> 08 Diárias</p>
                                </div>
                                <p class="card-text marginParagraph">a partir de</p>
                                <h5>R$ 2.000,00</h5>
                                <p class="card-text">Em até 10x no cartão</p>
                                <div class="d-flex align-items-center">
                                    <i class="bi bi-patch-check-fill me-2 icon"></i>
                                    <p class="card-text">Desconto 25%</p>
                                </div>
                                <a href="./promocao" class="btn btn-sm btn-primary mt-2">Confira já!</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 mt-3">
                        <div class="card shadow">
                            <img src="assets/imagens/paris.jpg" class="card-img-top" height="181px" alt="paris">
                            <div class="card-body">
                                <h5 class="card-title">Paris</h5>
                                <div class="d-flex align-items-center">
                                    <i class="bi bi-check2-circle me-2 icon"></i>
                                    <p class="card-text">Aéreo ida e volta</p>
                                </div>
                                <div class="d-flex align-items-center">
                                    <i class="bi bi-check2-circle me-2 icon"></i>
                                    <p class="card-text"> 12 Diárias</p>
                                </div>
                                <p class="card-text marginParagraph">a partir de</p>
                                <h5>R$ 2.100,00</h5>
                                <p class="card-text">Em até 10x no cartão</p>
                                <div class="d-flex align-items-center">
                                    <i class="bi bi-patch-check-fill me-2 icon"></i>
                                    <p class="card-text">Desconto 25%</p>
                                </div>
                                <a href="./promocao" class="btn btn-sm btn-primary mt-2">Confira já!</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 mt-3">
                        <div class="card shadow">
                            <img src="assets/imagens/paris.jpg" class="card-img-top" height="181px" alt="paris">
                            <div class="card-body">
                                <h5 class="card-title">Seoul</h5>
                                <div class="d-flex align-items-center">
                                    <i class="bi bi-check2-circle me-2 icon"></i>
                                    <p class="card-text">Aéreo ida e volta</p>
                                </div>
                                <div class="d-flex align-items-center">
                                    <i class="bi bi-check2-circle me-2 icon"></i>
                                    <p class="card-text"> 10 Diárias</p>
                                </div>
                                <p class="card-text marginParagraph">a partir de</p>
                                <h5>R$ 2.210,00</h5>
                                <p class="card-text">Em até 10x no cartão</p>
                                <div class="d-flex align-items-center">
                                    <i class="bi bi-patch-check-fill me-2 icon"></i>
                                    <p class="card-text">Desconto 20%</p>
                                </div>
                                <a href="./promocao" class="btn btn-sm btn-primary mt-2">Confira já!</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 mt-3">
                        <div class="card shadow">
                            <img src="assets/imagens/orlando.jpg" class="card-img-top" height="181px" alt="paris">
                            <div class="card-body">
                                <h5 class="card-title">Orlando</h5>
                                <div class="d-flex align-items-center">
                                    <i class="bi bi-check2-circle me-2 icon"></i>
                                    <p class="card-text">Aéreo ida e volta</p>
                                </div>
                                <div class="d-flex align-items-center">
                                    <i class="bi bi-check2-circle me-2 icon"></i>
                                    <p class="card-text"> 10 Diárias</p>
                                </div>
                                <p class="card-text marginParagraph">a partir de</p>
                                <h5>R$ 1.998,00</h5>
                                <p class="card-text">Em até 10x no cartão</p>
                                <div class="d-flex align-items-center">
                                    <i class="bi bi-patch-check-fill me-2 icon"></i>
                                    <p class="card-text">Desconto 20%</p>
                                </div>
                                <a href="./promocao" class="btn btn-sm btn-primary mt-2">Confira já!</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 mt-3">
                        <div class="card shadow">
                            <img src="assets/imagens/roma.jpg" class="card-img-top" height="181px" alt="roma">
                            <div class="card-body">
                                <h5 class="card-title">Roma</h5>
                                <div class="d-flex align-items-center">
                                    <i class="bi bi-check2-circle me-2 icon"></i>
                                    <p class="card-text">Aéreo ida e volta</p>
                                </div>
                                <div class="d-flex align-items-center">
                                    <i class="bi bi-check2-circle me-2 icon"></i>
                                    <p class="card-text"> 05 Diárias</p>
                                </div>
                                <p class="card-text marginParagraph">a partir de</p>
                                <h5>R$ 2.350,00</h5>
                                <p class="card-text">Em até 10x no cartão</p>
                                <div class="d-flex align-items-center">
                                    <i class="bi bi-patch-check-fill me-2 icon"></i>
                                    <p class="card-text">Desconto 20%</p>
                                </div>
                                <a href="./promocao" class="btn btn-sm btn-primary mt-2">Confira já!</a>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-md-3 mt-3">
                        <div class="card shadow">
                            <img src="assets/imagens/paris.jpg" class="card-img-top" height="181px" alt="paris">
                            <div class="card-body">
                                <h5 class="card-title">Cairo</h5>
                                <div class="d-flex align-items-center">
                                    <i class="bi bi-check2-circle me-2 icon"></i>
                                    <p class="card-text">Aéreo ida e volta</p>
                                </div>
                                <div class="d-flex align-items-center">
                                    <i class="bi bi-check2-circle me-2 icon"></i>
                                    <p class="card-text"> 06 Diárias</p>
                                </div>
                                <p class="card-text marginParagraph">a partir de</p>
                                <h5>R$ 2.564,00</h5>
                                <p class="card-text">Em até 10x no cartão</p>
                                <div class="d-flex align-items-center">
                                    <i class="bi bi-patch-check-fill me-2 icon"></i>
                                    <p class="card-text">Desconto 30%</p>
                                </div>
                                <a href="./promocao" class="btn btn-sm btn-primary mt-2">Confira já!</a>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-md-3 mt-3">
                        <div class="card shadow">
                            <img src="assets/imagens/novaiorque.jpg" class="card-img-top" height="181px" alt="paris">
                            <div class="card-body">
                                <h5 class="card-title">Londres</h5>
                                <div class="d-flex align-items-center">
                                    <i class="bi bi-check2-circle me-2 icon"></i>
                                    <p class="card-text">Aéreo ida e volta</p>
                                </div>
                                <div class="d-flex align-items-center">
                                    <i class="bi bi-check2-circle me-2 icon"></i>
                                    <p class="card-text"> 12 Diárias</p>
                                </div>
                                <p class="card-text marginParagraph">a partir de</p>
                                <h5>R$ 2.800,00</h5>
                                <p class="card-text">Em até 10x no cartão</p>
                                <div class="d-flex align-items-center">
                                    <i class="bi bi-patch-check-fill me-2 icon"></i>
                                    <p class="card-text">Desconto 30%</p>
                                </div>
                                <a href="./promocao" class="btn btn-sm btn-primary mt-2">Confira já!</a>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-md-3 mt-3">
                        <div class="card shadow">
                            <img src="assets/imagens/orlando.jpg" class="card-img-top" height="181px" alt="paris">
                            <div class="card-body">
                                <h5 class="card-title">Tóquio</h5>
                                <div class="d-flex align-items-center">
                                    <i class="bi bi-check2-circle me-2 icon"></i>
                                    <p class="card-text">Aéreo ida e volta</p>
                                </div>
                                <div class="d-flex align-items-center">
                                    <i class="bi bi-check2-circle me-2 icon"></i>
                                    <p class="card-text"> 08 Diárias</p>
                                </div>
                                <p class="card-text marginParagraph">a partir de</p>
                                <h5>R$ 2.766,00</h5>
                                <p class="card-text">Em até 10x no cartão</p>
                                <div class="d-flex align-items-center">
                                    <i class="bi bi-patch-check-fill me-2 icon"></i>
                                    <p class="card-text">Desconto 30%</p>
                                </div>
                                <a href="./promocao" class="btn btn-sm btn-primary mt-2">Confira já!</a>
                            </div>
                        </div>
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
        <i class="bi bi-facebook fs-6 pe-2 iconSocial"></i> 
        <i class="bi bi-instagram fs-6 pe-2 iconSocial"></i> 
        <i class="bi bi-twitter fs-6 iconSocial"></i>
      </div>
    </div>
  </footer>
  <!-- Fim do rodapé -->
   
  <!-- Javascript -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>