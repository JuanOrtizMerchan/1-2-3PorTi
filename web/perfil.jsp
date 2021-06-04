
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
                        <a href="perfil.jsp" class="nav-menu-link nav-link">Mi Perfil</a>
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
        
            <ul class="pos">
                
                <div class="col-md-3">
                    <center>
                    <img src="images/Usuario1.png" width="300px" height="300px" style="margin-top: 50px">   
                    </center>
                    <p>
            
                    </p>
                </div>           
     <div class="fom-group body-font">
				<h3>ACTUALIZACIÓN DE DATOS.</h3>
				<div class="login-form">
					<form action="editUser.htm" method="post">
                                            <input type="hidden" name="id" value="${listaPersonas.get(0).getId()}">
                                            <input type="text"  class="form-control input" id="identificacion" name="identificacion" value="${listaPersonas.get(0).getIdentificacion()}" >
                                            <input type="text" class="form-control input"  name="nombre1" value="${listaPersonas.get(0).getNombre1()}" >
                                            <input type="text" class="form-control input"  name="apellido1" value="${listaPersonas.get(0).getApellido1()}" >
                                            <input type="text" class="form-control input" name="telef" value="${listaPersonas.get(0).getTelef()}" >
                                            <input type="email" class="form-control input" name="email" value="${listaPersonas.get(0).getEmail()}" >
                                            <input type="password"  class="form-control" name="pass" value="${listaPersonas.get(0).getPass()}" >
                                            <input type="hidden" name="id" value="${listaPersonas.get(0).getId()}">
                                            <br>
                                            <center><!-- comment -->
                                            <input style="background-color: #8A1583" class="btn btn-danger btn-block" type="submit" value="EDITAR">
                                             <a href="perfil1.jsp" class="btn btn-danger btn-block" >Volver a consultar</a>
                                            </center>
					</form>
                                            <center><p style="font-size: 20px; font-family: initial">${mensaje}</p></center>
                                    </div>
                                    <div class="login-form">
					<form action="deletUser.htm" method="post">
                                            <input type="hidden" name="id" value="${listaPersonas.get(0).getId()}">
                                            <br>
                                            <center><!-- comment -->
                                            <input style="background-color: #8A1583" class="btn btn-danger btn-block" type="submit" value="Eliminar">
                                            </center>
					</form>
                                            <center>
                                            <p style="font-size: 20px; font-family: initial">${mensaje2}</p>
                                            </center>
                                    </div>
		</div>
        </div>
                <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    </body>
</html>
