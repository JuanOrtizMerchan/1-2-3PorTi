<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="css/css.css" rel="stylesheet" type="text/css"/>
        <link href="css/Bienvenida.css" rel="stylesheet" type="text/css"/>
        <title>Crear Cuenta</title>
    </head>
    <body class="body1">
        
        <div class="col-lg-3 formulario2">
          <form action="userRegister.htm" method="post">
              <center><p style="font-size: 70px; font-family: initial">REGISTRO</p></center>
                                            <div class="form-group">
                                               <label>Identificación</label>
                                              <input type="text" class="form-control" id="identificacion" name="identificacion" placeholder="Identificacion" >
                                            </div>
                                            <div class="form-group">
                                               <label>Nombre</label>
                                              <input type="text" class="form-control"  name="nombre1" placeholder="Nombre: ">
                                            </div>
                                            <div class="form-group">
                                               <label>Apellido</label>   
                                              <input type="text" class="form-control"  name="apellido1" placeholder="Apellido: ">
                                            </div>
                                            <div class="form-group">
                                               <label>Telefono</label>   
                                            <input type="text" class="form-control"name="telefono" placeholder="Telefono:">
                                            </div>
                                            <div class="form-group">
                                               <label>E-mail:</label>   
                                            <input type="email" class="form-control" name="email" placeholder="Email: ">
                                            </div>
                                             <div class="form-group">
                                               <label>Contraseña</label>   
                                            <input type="password" class="form-control" name="pass" placeholder="Password: " >
                                            </div>
                                              <br>
                                            <input class="btn btn-danger btn-block" type="submit" value="REGISTER">
					</form>
                                            <br>
                                            <form action="return.htm">
                                            <input class="btn btn-danger btn-block" type="submit" value="VOLVER" name="accion">
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