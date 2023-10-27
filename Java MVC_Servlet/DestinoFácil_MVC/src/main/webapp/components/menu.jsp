<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>

<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
 <div class="container">
  <a class="navbar-brand mb-2" href="<%=request.getParameter("home")%>">
   <img src="assets/imagens/logo_destinofacil.png" alt="logo"
 width="145" height="39">
  </a>
  <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
   data-bs-target="#navbarNavAltMarkup"
   aria-controls="navbarNavAltMarkup" aria-expanded="false"
   aria-label="Toggle navigation">
   <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse justify-content-end" id="navbarNavAltMarkup">
   <div class="navbar-nav">
    <a class="nav-link" href="<%=request.getParameter("home")%>">Home</a>
    <a class="nav-link" href="<%=request.getParameter("cliente")%>">Clientes</a>
    <a class="nav-link" href="<%=request.getParameter("destino")%>">Destinos</a>
    <a class="nav-link" href="<%=request.getParameter("compra")%>">Compras</a> 
    <a class="nav-link" href="<%=request.getParameter("promocao")%>">Promoções</a>
   </div>
  </div>
 </div>
</nav>
