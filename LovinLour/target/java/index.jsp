<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="vistas/scripts/css/style.css" type="text/css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Josefin+Slab:wght@100&display=swap" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
  </head>
  <body class="container">

    <div class="backGround">
    </div>

    <div class="CenterLogin">

      <div class="Formulario">

            <form class="" action="Control?accion=login" method="post">
            <h1>Welcome to</h1>
            <input class="typing" id="typing" readonly>
              <br><br><br>
            <input required class="email" type="text" name="email" placeholder="nombre@mail.com">
            <input required class="password" type="password" name="password" placeholder="Secret Password">
            <br><br>
            <input type="submit" name="signup" class="submit" value="Log In">
            or <br><br>
            <a class="sub back" name="Log in" href="Control?accion=signup">Sign Up</a><br>
            <p id="footer">Creado por Anderson Ocana</p>
          </form>
      </div>
    </div>
  </body>
<script src="vistas/scripts/js/functions.js" ></script>
</html>
