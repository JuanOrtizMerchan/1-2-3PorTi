
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel = "preconnect" href = "https://fonts.gstatic.com">
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
        <link href="css/css.css" rel="stylesheet" type="text/css"/>
        <link href="css/Bienvenida.css" rel="stylesheet" type="text/css"/>
        <title>Perfil</title>
    </head>
    <body class="body">
        <header class="header">
            <nav class="nav">
                <a href="Home.jsp" class="logo nav-link">1, 2, 3 POR TI</a>
                <ul class="nav-menu">
                    <li class="nav-menu-item">
                                             
                        <a href="#" class="nav-link dropdown-toggle nav-menu-link nav-link" data-toggle="dropdown">Cerrar Sesión</a>
                        <div class="dropdown-menu text-center">
                                <img src="images/Usuario1.png" width="100px" height="100px" />
                        <a>Nombre Usuario</a>
                        <a class="dropdown-divider"></a>
                        <a href="index.jsp" class="dropdown-item">Salir</a>
                </div>
            </li>
                </ul>
            </nav>
        </header>        
        <div class="fom-group body-font">
        
            <ul class="pos">
                <br>
                    <div  style="text-align: center">
                <button class="btn btn-danger" style="background-color: #8A1583">ADMINISTRACIÓN DEL TEST</button>
                     </div>    
                
                <form action="questionManager.htm" method="post">
                <div class="form-group">
                    <label>Preguntas: </label>
                    <input type="text" name="pregunta" placeholder="Inserte acá una pregunta para la base de datos." class="form-control">
                </div>
                <div class="form-group">
                    <br>
                    <label>OPCION A:</label>
                    <input type="text" name="opcA" placeholder="Inserte acá opción A" class="form-control">
                </div>
                <div class="form-group">
                    <label>OPCION B:</label>
                    <input type="text" name="opcB" placeholder="Inserte acá opción B" class="form-control">
                </div>
                <div class="form-group">
                    <label>OPCION C:</label>
                    <input type="text" name="opcC" placeholder="Inserte acá opcion C" class="form-control">
                </div>
                    <input class="btn btn-danger btn-block" type="submit" value="Ingresar">
               </form>
                                              <center>
                                                  <p>${mensaje}</p>
                                              </center>
      
            
        </div>
                <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    </body>
</html>
