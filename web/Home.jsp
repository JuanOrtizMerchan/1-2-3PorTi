<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel = "preconnect" href = "https://fonts.gstatic.com">
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
        <link href="css/css.css" rel="stylesheet" type="text/css"/>

        <title>Home</title>
    </head>

    <body  class="body">

        <header class="header">
            <nav class="nav">
                       <li class="nav-menu-item">
                        <a href="Home.jsp" class="nav-menu-link nav-link">1,2,3 POR TI</a>
                    </li>
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
                        <a href="#" class="dropdown-toggle nav-menu-link nav-link" data-toggle="dropdown">Cerrar Sesión</a>
                        <div class="dropdown-menu text-center">
                            <img src="images/Usuario1.png" width="100px" height="100px" />
                            <a class="dropdown-divider"></a>
                            <a href="index.jsp" class="dropdown-item">Salir</a>
                        </div>
                    </li>
                </ul>
            </nav>
        </header>

        <div class="container1">

            <div class="card" style="margin-top: 50px">
                <img src="images/Violencia1.jpg" width="100px" height="100px">
                <h1>¿Qué es la violencia de Genero?</h1>
                <p>Tomado de la pagina oficial del Ayuntamienot de Zaragoza</p>
                <a href="https://www.zaragoza.es/contenidos/sectores/mujer/guia-violencia-genero-es.pdf">Leer</a>
            </div>

            <div class="card" style="margin-top: 50px">
                <img src="images/denuncia.jpg" width="100px" height="100px">
                <h1>¿Donde denunciar al agresor?</h1>
                <p>Articulo tomado de la pagina oficial de Profamilia</p>
                <a href="https://profamilia.org.co/aprende/violencia-de-genero/donde-denunciar/">Leer</a>
            </div>

            <div class="card" style="margin-top: 50px">
                <img src="images/identificar.jpg" width="100px" height="100px">
                <h1>¿Soy victima de Violencia de Genero?</h1>
                <p>Articulo tomado de la pagina oficial de Educo</p>
                <a href="https://www.educo.org/Blog/Como-identificar-la-violencia-de-genero">Leer</a>
            </div>

            <div class="card" >
                <img src="images/adolescencia.jpg" width="100px" height="100px">
                <h1>Violencia en la adolecencia</h1>
                <p>Articulo hecho por el Ministerio de Sanidad  de Madrid</p>
                <a href="https://violenciagenero.igualdad.gob.es/profesionalesInvestigacion/educativo/recursos/material/pdf/guia.pdf">Leer</a>
            </div>
            
            <div class="card" >
                <img src="images/prevenir.jpg" width="100px" height="100px">
                <h1>¿Cómo prevenir la Violencia de Genero?</h1>
                <p>Tomado de Educar en Igualdad</p>
                <a href="http://associacioperlacoeducacio.org/wp-content/uploads/2016/12/guia-cortos-igualdad-violencia-de-genero.pdf">Leer</a>
            </div>
        </div>        

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
