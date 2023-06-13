<%@ page import="java.awt.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.Calendar" %>
<%@ page contentType="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
    <head>
    <meta charset="UTF-8">
    </meta>
    <!--author-->
    <meta name="author" content="Juan-Santiago">
    </meta>
    <!--descripcion-->
    <meta name="description" content="Pagina basada en un login para los usuarios.">
    </meta>
    <!--keywords-->
    <meta name="keywords" content="Iniciar sesion, autenticacion, verificacion, acceso, cuenta, seguridad">
    </meta>
    <!--minium responsive viewport-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    </meta>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </meta>
</head>
<!--TITLE-->
<title>Login de Usuario </title>
<!--FAVICON-->
    <link rel="icon" type="image/x-icon" href="./css/img/gato1.png">
    </link>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
          crossorigin="anonymous">
    </link>

    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/boostrap-icons@1.10.3/font/bootstrap-icons-css">
    </link>
    <!--custom css-->
    <link rel="stylesheet" href="css/signin.css">
    </link>
<body class="text.center">
    <div class="container">
    <!--login form-->
    <main class="form-signin w-100 m-auto">
        <form action="" method="post">
            <img class="mb-4" src="./css/img/gato1.png">
            </img>
            <h1 class="h5 mb-3 fw-normal">Ingreso</h1>
            <div class="form-floating">
                <input type="text" class="form-control" id="floatingInput" placeholder="ingrese su nombre de usuario" autofocus required  pattern="[A-Za-z0-9]{8, 12]">
                </input>
                <label for="floatingInput">Usuario:</label>
            </div>
            <div class="form-floating">
                <input type="password" class="form-control" id="floatingPassword" placeholder="ingrese su contraseña" required pattern="[A-Za-z0-9]{8, 12}">
                </input>
            <label for="floatingPassword">contraseña:</label>
        </div>
            <button class="w-100 btn btn-lg btn-primary" type="submit">Ingresar</button>
        <div id="register">
        <a href="User">Registrar Usuario</a><br>
         <a href="Category">Registrar Categoria</a><br>
         <a href="Product">Registrar Producto</a><br>
        </div>
            <p class="mt-3 mb-3 text-muted">Todos los Derechos Reservados © <%=displayDate()%> </p>
        </form>
    </main>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
            crossorigin="anonymous">
    </script>

    <%!
    public String displayDate() {
    SimpleDateFormat dateFormat = new SimpleDateFormat("YYYY");
    Date date = Calendar.getInstance().getTime();
    return dateFormat.format(date);
    }
    %>

</body>
</html>