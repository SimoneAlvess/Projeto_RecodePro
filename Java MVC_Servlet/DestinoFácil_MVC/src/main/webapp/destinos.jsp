<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
    <jsp:include page="./components/menu.jsp">
      <jsp:param name="home" value="./" />
      <jsp:param name="cliente" value="cliente" />
      <jsp:param name="destino" value="destino" />
      <jsp:param name="promocao" value="promocao" />
      <jsp:param name="compra" value="compra" />
    </jsp:include>
  </header>
  
    <!-- Início  -->
    <main class="bgHome">
        <section>
            <div class="container mt-5 mb-4 text-white">
                <h2>Embarque na sua próxima aventura.</h2> 
                <h6>Encontre agora seu destino dos sonhos!</h6>
            </div>
          
            <div class="container py-5 px-4 mb-5 shadow bg-white text-dark">
                <div class="row">
                    <div class="col-md-12">
                        <form method="get">
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="inlineRadioOptions" id="ida"
                                    value="ida">
                                <label class="form-check-label" for="ida">Ida</label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="inlineRadioOptions" id="idavolta"
                                    value="idavolta">
                                <label class="form-check-label" for="idavolta">Ida e Volta</label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="inlineRadioOptions" id="vdestinos"
                                    value="vdestinos">
                                <label class="form-check-label" for="vdestinos">Vários destinos</label>
                            </div>

                            <div class="row py-2">
                                <div class="col-md-4">
                                    <label for="origem" class="form-label">Origem</label>
                                    <input type="text" class="form-control" id="origem" aria-label="origem">
                                </div>
                                <div class="col-md-4">
                                    <label for="destino" class="form-label">Destino</label>
                                    <input type="text" class="form-control" id="destino" aria-label="destino">
                                </div>
                                <div class="col-md-4">
                                    <label for="qtpessoas" class="form-label">Quantidade de pessoas</label>
                                    <input type="text" class="form-control" id="qtpessoas" aria-label="qtpessoas">
                                </div>   
                            </div>

                            <div class="row py-2 align-items-sm-end ">
                                <div class="col-sm-4 mb-2 mb-sm-0">
                                    <label for="dtida" class="form-label">Data de ida</label>
                                    <input type="date" class="form-control" id="dtida" aria-label="dtida">
                                </div>
                                <div class="col-sm-4 mb-3 mb-sm-0">
                                    <label for="dtvolta" class="form-label">Data de volta</label>
                                    <input type="date" class="form-control" id="dtvolta" aria-label="dtvolta">
                                </div>
                                <div class="col-sm-4 d-grid gap-2 d-md-block">
                                    <a class="btn btn-primary btn-sm" href="./destino">Pesquisar</a>
                                </div>
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