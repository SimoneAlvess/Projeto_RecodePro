<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home | DestinoFácil</title>
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
  
  <!-- Início Corpo página -->
  <main>
  
    <section>
      <div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
          <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
          <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
          <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner rounded-bottom">
          <div class="carousel-item active">
            <img alt="paisagem" src="assets/imagens/background_cadastros.jpg" height="534" width="100%">
            <div class="container">
              <div class="carousel-caption">
                <h1>Bem-vindo(a) à DestinoFácil</h1>
                <p class="lead">Sua porta de entrada para um mundo de possibilidades e descobertas <br>Transformando sonhos em destinos!
                </p>
                <p><a class="btn btn-lg btnGroup" href="./cliente">Cadastre-se</a></p>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <img alt="paisagem" src="assets/imagens/carousel03.jpg" height="534" width="100%">
            <div class="container">
              <div class="carousel-caption text-start">
                <h1>Encontre seu destino dos sonhos</h1>
                <p class="lead">Confira nossos destinos e realize a tão esperada viagem dos seus sonhos.</p>
                <p><a class="btn btn-lg btnGroup" href="./destino">Confira Já</a></p>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <img alt="paisagem" src="assets/imagens/bg-carousel01.jpg" height="534" width="100%">
            <div class="container">
              <div class="carousel-caption text-end">
                <h1>Ofertas que cabem no seu bolso</h1>
                <p class="lead">Não deixe de conferir nossas ofertas especiais.</p>
                <p><a class="btn btn-lg btnGroup" href="./promocao">Confira Já</a></p>
              </div>
            </div>
          </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span> <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span> <span class="visually-hidden">Next</span>
        </button>
      </div>
    </section>
    
    <section class="my-4">
      <div class="container-fluid">
        <div class="container py-3">
          <div class="row text-center">
            <div class="col-md-3">
              <i class="bi bi-award-fill bi-icon fs-1"></i>
              <h6>Garantia e Satisfação</h6>
              <p class="font-media">Garantia de satisfação em cada viagem. Descubra experiências inesquecíveis com nossa agência.</p>
            </div>
            <div class="col-md-3">
              <i class="bi bi-people-fill bi-icon fs-1"></i>
              <h6>Atendimento Personalizado</h6>
              <p class="font-media">Oferecemos atendimento personalizado para tornar cada viagem única.</p>
            </div>
            <div class="col-md-3">
              <i class="bi bi-headset bi-icon fs-1"></i>
              <h6>Suporte Durante a Viagem</h6>
              <p class="font-media">Suporte em toda viagem. Sua tranquilidade é nossa prioridade</p>
            </div>
            <div class="col-md-3">
              <i class="bi bi-tags-fill bi-icon fs-1"></i>
              <h6>Preços Competitivos</h6>
              <p class="font-media">Preços competitivos para viagens incríveis. Descubra o mundo sem gastar muito.</p>
            </div>
          </div>
        </div>
      </div>
    </section>
     <!-- Carousel Destinos Nacionais -->
    <section class="py-3">
      <div class="container">
        <hr>
        <div class="row py-4">
          <div class="col-md-7">
            <h2 class="pt-5">
              Destinos populares. <span class="text-muted">Destinos nacionais.</span>
            </h2>
            <p class="lead">Some great placeholder content for the first featurette here. Imagine some exciting prose here.</p>
          </div>
          <div class="col-md-5">
            <div id="mycarousel2" class="carousel slide" data-bs-ride="carousel">
              <div class="carousel-inner shadow rounded-4">
              
                <div class="carousel-item active">
                  <div class="card rounded-4">
                    <img src="assets/imagens/riodejaneiro.jpg" class="card-img-top" height="300" alt="rio de janeiro">
                    <div class="card-body">
                      <div class="d-flex align-items-center">
                        <i class="bi bi-geo-alt-fill me-1 fs-5 pb-2"></i>
                        <h5 class="card-title">Rio de Janeiro</h5>
                      </div>
                      <p class="card-text text-muted">Lorem ipsum dolor sit amet consectetur adipisicing elit. Amet, maiores! Laboriosam laborum
                        amet voluptate pariaturtem.</p>
                    </div>
                  </div>
                </div>
                
                <div class="carousel-item">
                  <div class="card rounded-4">
                    <img src="assets/imagens/bonito.jpg" class="card-img-top" height="300" alt="bonito">
                    <div class="card-body">
                      <div class="d-flex align-items-center">
                        <i class="bi bi-geo-alt-fill me-1 fs-5 pb-2"></i>
                        <h5 class="card-title">Bonito</h5>
                      </div>
                      <p class="card-text text-muted">Lorem ipsum dolor sit amet consectetur adipisicing elit. Amet, maiores! Laboriosam laborum
                        amet voluptate pariaturtem.</p>
                    </div>
                  </div>
                </div>
                
                <div class="carousel-item">
                  <div class="card rounded-4">
                    <img src="assets/imagens/maragogi.jpg" class="card-img-top" height="300" alt="maragogi">
                    <div class="card-body">
                      <div class="d-flex align-items-center">
                        <i class="bi bi-geo-alt-fill me-1 fs-5 pb-2"></i>
                        <h5 class="card-title">Maragogi</h5>
                      </div>
                      <p class="card-text text-muted">Lorem ipsum dolor sit amet consectetur adipisicing elit. Amet, maiores! Laboriosam laborum
                        amet voluptate pariaturtem.</p>
                    </div>
                  </div>
                </div>
                
                <div class="carousel-item">
                  <div class="card rounded-4">
                    <img src="assets/imagens/gramado.jpg" class="card-img-top" height="300" alt="gramado">
                    <div class="card-body">
                      <div class="d-flex align-items-center">
                        <i class="bi bi-geo-alt-fill me-1 fs-5 pb-2"></i>
                        <h5 class="card-title">Gramado</h5>
                      </div>
                      <p class="card-text text-muted">Lorem ipsum dolor sit amet consectetur adipisicing elit. Amet, maiores! Laboriosam laborum
                        amet voluptate pariaturtem.</p>
                    </div>
                  </div>
                </div>
                
              </div>
              <button class="carousel-control-prev" type="button" data-bs-target="#mycarousel2" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span> <span class="visually-hidden">Previous</span>
              </button>
              <button class="carousel-control-next" type="button" data-bs-target="#mycarousel2" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span> <span class="visually-hidden">Next</span>
              </button>
            </div>
          </div>
        </div>
        <hr>
        <!-- Carousel Destinos Internacionais -->
        <div class="row py-4">
          <div class="col-md-7 order-md-5">
            <h2 class="pt-5">
              Destinos populares. <span class="text-muted">Destinos Internacionais.</span>
            </h2>
            <p class="lead">Another featurette? Of course. More placeholder content here to give you an idea of how this layout would work with
              some actual real-world content in place.</p>
          </div>
          <div class="col-md-5 order-md-1">
            <div id="mycarousel" class="carousel slide" data-bs-ride="carousel">
              <div class="carousel-inner shadow rounded-4">
              
                <div class="carousel-item active">
                  <div class="card rounded-4">
                    <img src="assets/imagens/paris.jpg" class="card-img-top" height="300" alt="paris">
                    <div class="card-body">
                      <div class="d-flex align-items-center">
                        <i class="bi bi-geo-alt-fill me-1 fs-5 pb-2"></i>
                        <h5 class="card-title">Paris</h5>
                      </div>
                      <p class="card-text text-muted">Lorem ipsum dolor sit amet consectetur adipisicing elit. Amet, maiores! Laboriosam laborum
                        amet voluptate pariaturtem.</p>
                    </div>
                  </div>
                </div>
                
                <div class="carousel-item">
                  <div class="card rounded-4">
                    <img src="assets/imagens/orlando.jpg" class="card-img-top" height="300" alt="orlando">
                    <div class="card-body">
                      <div class="d-flex align-items-center">
                        <i class="bi bi-geo-alt-fill me-1 fs-5 pb-2"></i>
                        <h5 class="card-title">Orlando</h5>
                      </div>
                      <p class="card-text text-muted">Lorem ipsum dolor sit amet consectetur adipisicing elit. Amet, maiores! Laboriosam laborum
                        amet voluptate pariaturtem.</p>
                    </div>
                  </div>
                </div>
                
                <div class="carousel-item">
                  <div class="card rounded-4">
                    <img src="assets/imagens/roma.jpg" class="card-img-top" height="300" alt="roma">
                    <div class="card-body">
                      <div class="d-flex align-items-center">
                        <i class="bi bi-geo-alt-fill me-1 fs-5 pb-2"></i>
                        <h5 class="card-title">Roma</h5>
                      </div>
                      <p class="card-text text-muted">Lorem ipsum dolor sit amet consectetur adipisicing elit. Amet, maiores! Laboriosam laborum
                        amet voluptate pariaturtem.</p>
                    </div>
                  </div>
                </div>
                
                <div class="carousel-item">
                  <div class="card rounded-4">
                    <img src="assets/imagens/novaiorque.jpg" class="card-img-top" height="300" alt="new york">
                    <div class="card-body">
                      <div class="d-flex align-items-center">
                        <i class="bi bi-geo-alt-fill me-1 fs-5 pb-2"></i>
                        <h5 class="card-title">Nova York</h5>
                      </div>
                      <p class="card-text text-muted">A cidade dos apaixonados e dos sonhadores, onde a atmosfera romântica flui ao longo das
                        margens do rio Sena.</p>
                    </div>
                  </div>
                </div>
                
              </div>
              <button class="carousel-control-prev" type="button" data-bs-target="#mycarousel" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span> <span class="visually-hidden">Previous</span>
              </button>
              <button class="carousel-control-next" type="button" data-bs-target="#mycarousel" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span> <span class="visually-hidden">Next</span>
              </button>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    <section class="bgHome my-5 rounded-3">
      <div class="container py-5 text-center">
        <i class="bi bi-building-check fs-1"></i>
        <h4>Sobre Nós</h4>
        <p>À DestinoFácil tem uma vasta experiência no setor. Ao longo dos anos, acumulamos conhecimento e expertise para garantir que cada viagem
          seja cuidadosamente planejada e executada com excelência. Nossa equipe dedicada e apaixonada por viagens está pronta para tornar suas
          jornadas memoráveis e repletas de momentos únicos, fazendo com que cada destino seja uma experiência verdadeiramente inesquecível.</p>
      </div>
    </section>
    
    <section class="container my-5">
      <div class="row py-5">
        <div class="col-md-6">
          <h2>Fique por dentro das novidades e ofertas da <span class="text-muted">DestinoFácil.</span></h2>
          <p class="lead">Explore o mundo com facilidade! <br>Nossa missão é tornar cada viagem uma jornada inesquecível. Viajar nunca foi
            tão fácil e emocionante!
          </p>
        </div>
        <div class="col-md-5 offset-md-1">
          <form>
            <h5>Inscreva-se</h5>
            <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit.</p>
            <div class="d-flex flex-column flex-sm-row w-100 gap-2">
              <label for="newsletter1" class="visually-hidden">Email</label>
              <input id="newsletter1" type="text" class="form-control" placeholder="Email">
              <button class="btn btnGroup" type="button">Inscreva</button>
            </div>
          </form>
        </div>
      </div>
    </section>
    
  </main>
  <!-- Fim Corpo página -->
  
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