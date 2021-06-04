
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="css/css.css" rel="stylesheet" type="text/css"/>
        <title>Test</title>
        
    </head>
    <body class="body1" >
        <form action="questionSave.htm" method="POST">
            <div style="margin-top: 20px; margin-left: 40px; margin-right: 70px">    
                <p style="text-align: center; font-family: initial; font-size: 40PX">TEST 1</p>
                                                            <div class="form-group">
                                               <label>Identificación</label>
                                              <input type="text" class="form-control" id="identificacion" name="identificacion" placeholder="Identificacion" >
                                            </div>
           
                <p style="font-size: 30px; font-family: initial">Pregunta 1</p>
                <p style="font-size: 20px; font-family: initial; text-align: justify">¿Tu pareja critica constantemente tu forma de vestir e intenta convencerte para que cambies tu aspecto?</p>
                <p style="font-size: 20px; font-family: initial"><input type="radio"  name="Op1" value="1">No</p>
                <p style="font-size: 20px; font-family: initial"><input type="radio" name="Op1" value="2">A veces</p>
                <p style="font-size: 20px; font-family: initial"><input type="radio" name="Op1" value="3">Sí</p>              
                
                <p style="font-size: 30px; font-family: initial">Pregunta 2</p>
                <p style="font-size: 20px; font-family: initial; text-align: justify">¿Te impide salir?</p>
                <p style="font-size: 20px; font-family: initial"><input type="radio" name="Op2" value="1">No</p>
                <p style="font-size: 20px; font-family: initial"><input type="radio" name="Op2" value="2">A veces</p>
                <p style="font-size: 20px; font-family: initial"><input type="radio" name="Op2" value="3">Sí</p>

                <p style="font-size: 30px; font-family: initial">Pregunta 3</p>
                <p style="font-size: 20px; font-family: initial; text-align: justify">¿Intenta que te alejes de tus familiares o amigos, los critica constantemente?</p>
                <p style="font-size: 20px; font-family: initial"><input type="radio" name="Op3" value="1">No</p>
                <p style="font-size: 20px; font-family: initial"><input type="radio" name="Op3" value="2">A veces</p>
                <p style="font-size: 20px; font-family: initial"><input type="radio" name="Op3" value="3">Sí</p>

                <p style="font-size: 30px; font-family: initial">Pregunta 4</p>
                <p style="font-size: 20px; font-family: initial; text-align: justify">¿Te hace sentir inferor o se burla de ti?</p>
                <p style="font-size: 20px; font-family: initial"><input type="radio" name="Op4" value="1">No</p>
                <p style="font-size: 20px; font-family: initial"><input type="radio" name="Op4" value="2">A veces</p>
                <p style="font-size: 20px; font-family: initial"><input type="radio" name="Op4" value="3">Sí</p>

                <p style="font-size: 30px; font-family: initial">Pregunta 5</p>
                <p style="font-size: 20px; font-family: initial; text-align: justify">¿Te insulta o te trata de manera ofensiva?</p>
                <p style="font-size: 20px; font-family: initial"><input type="radio" name="Op5" value="1">No</p>
                <p style="font-size: 20px; font-family: initial"><input type="radio" name="Op5" value="2">A veces</p>
                <p style="font-size: 20px; font-family: initial"><input type="radio" name="Op5" value="3">Sí</p>

                <p style="font-size: 30px; font-family: initial">Pregunta 6</p>
                <p style="font-size: 20px; font-family: initial; text-align: justify">¿Te ignora constantemente?</p>
                <p style="font-size: 20px; font-family: initial"><input type="radio" name="Op6" value="1">No</p>
                <p style="font-size: 20px; font-family: initial"><input type="radio" name="Op6" value="2">A veces</p>
                <p style="font-size: 20px; font-family: initial"><input type="radio" name="Op6" value="3">Sí</p>

                <p style="font-size: 30px; font-family: initial">Pregunta 7</p>
                <p style="font-size: 20px; font-family: initial; text-align: justify">¿Es celoso y te acusa de serle infiel?</p>
                <p style="font-size: 20px; font-family: initial"><input type="radio" name="Op7" value="1">No</p>
                <p style="font-size: 20px; font-family: initial"><input type="radio" name="Op7" value="2">A veces</p>
                <p style="font-size: 20px; font-family: initial"><input type="radio" name="Op7" value="3">Sí</p>

                <p style="font-size: 30px; font-family: initial">Pregunta 8</p>
                <p style="font-size: 20px; font-family: initial; text-align: justify">¿Controla dónde y con quién estás?</p>
                <p style="font-size: 20px; font-family: initial"><input type="radio" name="Op8" value="1">No</p>
                <p style="font-size: 20px; font-family: initial"><input type="radio" name="Op8" value="2">A veces</p>
                <p style="font-size: 20px; font-family: initial"><input type="radio" name="Op8" value="3">Sí</p>

                <p style="font-size: 30px; font-family: initial">Pregunta 9</p>
                <p style="font-size: 20px; font-family: initial; text-align: justify">¿Te obliga a mantener relaciones sexuales o insiste hasta que cedas?</p>
                <p style="font-size: 20px; font-family: initial"><input type="radio" name="Op9" value="1">No</p>
                <p style="font-size: 20px; font-family: initial"><input type="radio" name="Op9" value="2">A veces</p>
                <p style="font-size: 20px; font-family: initial"><input type="radio" name="Op9" value="3">Sí</p>

                <p style="font-size: 30px; font-family: initial">Pregunta 10</p>
                <p style="font-size: 20px; font-family: initial; text-align: justify">¿Te amenaza con irse de tu lado si no cumples lo que te pide?</p>
                <p style="font-size: 20px; font-family: initial"><input type="radio" name="Op10" value="1">No</p>
                <p style="font-size: 20px; font-family: initial"><input type="radio" name="Op10" value="2">A veces</p>
                <p style="font-size: 20px; font-family: initial"><input type="radio" name="Op10" value="3">Sí</p>
    </div>
    <center>
                                            <input href="https://www.zaragoza.es/contenidos/sectores/mujer/guia-violencia-genero-es.pdf" class="btn btn-danger btn-block" type="submit" value="Enviar Test">
    </center>
        </form>
        <p><center>${mensaje}</center></p>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
