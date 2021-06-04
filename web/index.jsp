<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="css/css.css" rel="stylesheet" type="text/css"/>
        <title>Login</title>
    </head>
    <body class="body2">
        
        <div class="formulario col-lg-3">
            <form action="userValidate.htm" method="post">
<div class="form-group text-center">
                    <img src="images/WhatsApp Image 2021-02-16 at 21.16.31.png" height="80" width="80"/>
                    <p></p>
                    <p><strong style="font-family: helvetica;">INICIAR SESIÓN</strong></p>
                </div>
                <div class="form-group">
                    <label>E-mail:</label>
                    <input class="form-control" type="email" name="email" placeholder="Ejemplo: soporte@123porti.com">
                </div>
                <div class="form-group">
                    <label>Contraseña:</label>
                    <input type="password" name="pass" placeholder="********" class="form-control">
                    
                </div>
             
                                            <input class="btn btn-danger btn-block" type="submit" value="Ingresar">
                                            
					</form>
                                              
                                              <center>
                                                  <p>${mensaje}</p>
                                              </center>
                                                                
            <center><p>¿No tienes cuenta?</p>
            
            <li><a class="hvr-sweep-to-bottom" href="userCreate.htm">Crear</a></li></center>
										
        </div>
        
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
    
</html>

