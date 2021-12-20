<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="comon.Root"%>
<%@page import="modelo.Books"%>
<%@page import="modelo.BooksDAO"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html lang="es" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="<%=Root.rootIndex%>/scripts/css/indexStyle.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Josefin+Slab:wght@100&display=swap" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Start Loving Lour</title>
  </head>

  <body class="container">
    <div class="backGround">
      <div class="usuario">
        <p>Bienvenido a </p>
        <input class="typing" id="typing"><br>
        <img src="<%=Root.rootIndex%>/scripts/imgs/user.svg" alt="" name="nombreUser"> <%=request.getSession().getAttribute("usuario")%> <br>
        <%-- <a href="Control?accion=logOut">Log out</a> --%>
        <button onclick="location.href='../java/index.jsp'" id="logout" type="button" name="button">Log Out</button>
      </div>


    </div>
    <div class="Main">
      <div class="info">
        <a id="aboutUs">About Us</a>
        <a class="mailing" href="mailto:andru.ocatorres@gmail.com?subject=Contacto desde LL">Contact Us</a>
      </div>
      <div id="us" class="nosotros hidden">
          <p class="us">
            Lovin' Lour es una página desarrollada por Anderson Ocaña, con el objeto de recomendar algunos best sellers.
            Así también que nuestro usuarios nos recomienden libros con su información obtenida, para generar una red mucho más grande de ávidos.
            <br><br>Lovin 'Lour is a webpage developed by Anderson Ocana, with the aim  to recommend some best sellers and create larger network of greedy book readers.</p>
      </div>
      <div class="data">
        <%                   
              List<Books> resultado=null;
              BooksDAO bookDao=new BooksDAO();
              resultado=bookDao.mostrarBooks();

              for(int i=0; i<resultado.size();i++){
                      String rutaModificar="BooksUpdate?accion=modificar&id="+resultado.get(i).getIdBook();
                      String rutaRecomendar="BooksUpdate?accion=recomendar&id="+resultado.get(i).getIdBook(); %>

        <div class="dataContent">
              <div class="contenedorOuter">
                <div class="contenedorInner">
                  <div class="front">
                    <img class="booklet" src="<%=Root.rootIndex%>/scripts/imgs/book.svg" width="50px" alt="">
                      <p><%=resultado.get(i).getBook()%></p>
                  </div>
                  <div class="back">
                    <div class="infoData">
                      <div class="opciones">
                        <a href=<%=rutaModificar%>>Update</a>
                        <a href=<%=rutaRecomendar%>>Recommend</a>
                      </div>
                      <p hidden>Id: <%=resultado.get(i).getIdBook()%></p>
                      <p>Author: <%=resultado.get(i).getAutor()%> </p>
                      <p>Language:  <%=resultado.get(i).getIdioma()%> </p>
                      <p>Released Date:  <%=resultado.get(i).getPrimeraPublicacion()%></p>
                      <p>Sales:  <%=resultado.get(i).getVentas()%></p>
                      <p>ISBN:   <%=resultado.get(i).getISBN()%></p>
                      <p> Last one who recommended: <%=resultado.get(i).getRecomendacion()%></p>
                    </div>
                  </div>
                </div>
            </div>
        </div>
        <% } %>
      </div>
    </div>

    <footer></footer>
    <footer>Creado por Anderson Ocana</footer>

  </body>
  <script src="<%=Root.rootIndex%>/scripts/js/functions.js" ></script>
</html>
