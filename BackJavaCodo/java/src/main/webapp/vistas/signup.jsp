<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="comon.Root"%>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="<%=Root.rootIndex%>/scripts/css/style.css" type="text/css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Josefin+Slab:wght@100&display=swap" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Sign Up Page</title>
  </head>

  <body class="container">
      <div class="backGround">
      </div>
      <div class="CenterLogin">

        <div class="Formulario">

              <form class="" action="Signup?accion=insertar" method="post">
              <h1>Sign Up to</h1>
              <input class="typing" id="typing" maxlength="200">
                <br><br><br>
              <input required class="nombre" type="text" name="nombre" placeholder="Name">
              <input required class="apellido" type="text" name="apellido" placeholder="Last name">
              <input required class="email" type="text" name="email" placeholder="name@mail.com">
              <input required class="password" type="password" name="password" placeholder="Secret Password">
              <br><br>
              <input type="submit" name="signup" class="submit " value="Sign Up">
              <br><br>
              <a class="sub back" name="Log in" href="../java/index.jsp">Back</a><br>
              <p id="footer">Creado por Anderson Ocana</p>
            </form>
            
        </div>
      </div>
  </body>
  <script src="<%=Root.rootIndex%>/scripts/js/functions.js" async></script>
</html>
