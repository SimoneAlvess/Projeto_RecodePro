<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <div class="container">
    <a class="navbar-brand mb-2" href="<%=request.getParameter("home")%>"> 
    <img src="assets/imagens/logo_destinofacil.png" alt="logo" width="145"
      height="39">
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarMenu" aria-controls="navbarMenu"
      aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarMenu">
      <div class="navbar-nav ms-auto mx-4">
        <a class="nav-link" href="<%=request.getParameter("home")%>">Home</a> 
        <a class="nav-link" href="destinos.jsp">Destinos</a> 
        <a class="nav-link" href="promocoes.jsp">Promoções</a> 
        <a class="nav-link" href="contato.jsp">Contato</a>
        <div class="nav-item dropdown">
          <a class="nav-link dropdown-toggle p-0" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"> <i
            class="bi bi-person-fill-gear fs-4"></i>
          </a>
          <div class="dropdown-menu dropdown-menu-end">
            <a class="dropdown-item" href="<%=request.getParameter("cliente")%>">Clientes</a>
            <a class="dropdown-item" href="<%=request.getParameter("destino")%>">Destinos</a> 
            <a class="dropdown-item" href="<%=request.getParameter("compra")%>">Compras</a> 
            <a class="dropdown-item" href="<%=request.getParameter("promocao")%>">Promoções</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</nav>
