<%-- 
    Document   : soporte
    Created on : 18/05/2021, 01:02:52 PM
    Author     : Laura Daniela
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="css/css.css" rel="stylesheet" type="text/css"/>
        <link href="css/Bienvenida.css" rel="stylesheet" type="text/css"/>
        <link href="css/css.css" rel="stylesheet" type="text/css"/>
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
        <title>Soporte</title>
    </head>
    <body class="body">

        <header class="header">
            <nav class="nav">
                <a href="Home.jsp" class="logo nav-link">1, 2, 3 POR TI</a>
                <ul class="nav-menu">
                    <li class="nav-menu-item">
                        <a href="perfil1.jsp" class="nav-menu-link nav-link">Mi Perfil</a>
                    </li>
                    <li class="nav-menu-item">
                        <a href="test.jsp" class="nav-menu-link nav-link">Test</a>
                    </li>
                    <li class="nav-menu-item">
                        <a href="soporte.jsp" class="nav-menu-link nav-link">Soporte</a>
                    </li>
                    <li class="nav-menu-item">

                        <a href="#" class="nav-link dropdown-toggle nav-menu-link nav-link" data-toggle="dropdown">Cerrar Sesión</a>
                        <div class="dropdown-menu text-center">
                            <img src="images/Usuario1.png" width="100px" height="100px" />
                             <a>${listaPersonas.get(0).getNombre1()}</a>
                            <a class="dropdown-divider"></a>
                            <a href="index.jsp" class="dropdown-item">Salir</a>
                        </div>
                    </li>
                </ul>
            </nav>
        </header>        

        <div class="fom-group body-font">

            <p style=" margin-top: 20px; margin-left: 50px; margin-right: 40px; font-size: 30px">Si presentas problemas con nuestros servicios, o necesitas ayuda con algo te podemos ayudar</p>
            <p style=" margin-left: 360px; margin-right: 55px; font-size: 20px">Por favor diligencia el siguiente formulario, cuentanos tu problema y nuestros asesores se pondran en contacto contigo para solucionar tu inquietud</p>

           


                <div class="col-md-3">

                    <img src="images/soporte.png" width="300px" height="300px">   

                    <p style="margin-top: 10px; margin-left: 30px; font-size: 17px; text-align: justify-all; font: bold; color: #8A1583">Nota: Por el momento el servicio de soporte solo está disponible para español</p>
                </div>           
                <form action="insertSupport.htm" method="post">
                <div >
                    <label>Nombres</label>
                    <input type="text" name="nombre" placeholder="Ana" class="form-control input"> 

                    <label>E-mail</label>
                    <input type="email" name="email" placeholder="anavargas1@gmail.com" class="form-control">

                    <label>Asunto</label>
                    <input type="text" name="asunto" placeholder="Problemas con Inicio de Sesión" class="form-control">

                    <label>Descripción</label>
                    <p></p>
                    <textarea type="text" name="descripcion" rows="10" cols="40" style="border-radius: 5px; border-style: solid; border-color: #d7d3d3; width: 600px"></textarea>
  <div  style="text-align: center">
                <button class="btn btn-danger" style="background-color: #8A1583">Enviar</button>
            </div>
                </div>
                </form>
            <p><center>${mensaje}</center></p>

          
            <p></p>
        </div>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>