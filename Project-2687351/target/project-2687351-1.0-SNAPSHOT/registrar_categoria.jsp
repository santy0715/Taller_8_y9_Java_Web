<%@ page import="java.awt.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.Calendar" %>
<%@ page contentType="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8"></meta>
        <!--author-->
        <meta name="author" content="Juan-Santiago"></meta>
        <!--descripcion-->
        <meta name="description" content="Pagina basada en el registro de una categoria.">
        </meta>
        <!--keywords-->
        <meta name="keywords" content="Registro de categoria">
        </meta>
        <!--minium responsive viewport-->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        </meta>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        </meta>
    </head>
    <!--TITLE-->
    <title>Registro de Categoria </title>
    <!--FAVICON-->
    <link rel="icon" type="image/x-icon" href="./css/img/registro1.png">

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
                <form action="registerCategory" method="post">
                    <img class="mb-4" src="./css/img/registro1.png"></img>
                    <h1 class="h5 mb-3 fw-normal">Registro Categoria</h1>
            <div class="form-floating">
                <input type="text" class="form-control" name="category_name" id="category_name" name="category_name" placeholder="ingrese nombre de categoria" required autofocus pattern="[A-Za-z ]{3,50}">
                </input>
                <label for="floatingName">Nombre Categoria:</label>
            </div>
             <button class="w-100 btn btn-lg btn-primary" type="submit">Registrar</button>
            <a href="Login">Inicio</a>
                    <p class="mt-3 mb-3 text-muted">Todos los Derechos Reservados © <%=displayDate()%> </p>
                </form>
            </main>
        </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
            crossorigin="anonymous"></script>
        <%!
            public String displayDate() {
                SimpleDateFormat dateFormat = new SimpleDateFormat("YYYY");
                Date date = Calendar.getInstance().getTime();
                return dateFormat.format(date);
            }
        %>
</body>
</html>