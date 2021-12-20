<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="comon.Root"%>
<%@page import="modelo.BooksDAO"%>
<%@page import="modelo.Books"%>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="<%=Root.rootIndex%>/scripts/css/StyleBook.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Josefin+Slab:wght@100&display=swap" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Modificar Page</title>
  </head>

  <body class="container">
    <div class="backGround">
      <div class="usuario">
        <img src="imgs/user.svg" alt=""> username <br>
        <button id="logout" type="button" name="button">Log Out</button>
      </div>
    </div>
    <div class="CenterLogin">
      <div class="Formulario">
            <%String id=request.getParameter("id");
            int ID=Integer.parseInt(id);
            Books book=null;
            BooksDAO bookN=new BooksDAO();
            book=bookN.obtenerBook(ID); 
            
            %>
            <form class="" action="BooksUpdate?accion=update" method="post">
            <h1 id="header">Thanks for Update our Data Base</h1>
            <input class="typing" id="typing">
              <br><br><br>
              <input hidden type="text" name="id" value="<%=book.getIdBook()%>" >
              Book's name: <input  type="text" name="nombre" value="<%=book.getBook()%>"> <br>
              Authos's name:<input  type="text" name="autor" value="<%=book.getAutor()%>"> <br>
              Sales amounted: <input  type="text" name="ventas" value="<%=book.getVentas()%>"> <br>
              <input type="submit" name="signup" class="submit" value="Update">
            <p id="footer">® Creado por Anderson Ocaña</p>
          </form>
      </div>
    </div>

  </body>
  <script src="<%=Root.rootIndex%>/scripts/js/functions.js" async></script>
</html>
