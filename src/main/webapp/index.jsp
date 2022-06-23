<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <link rel="stylesheet" href="bootstrap4/css/bootstrap.min.css">	 
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
        <link rel="stylesheet" href="Css/styles.css"> 
        <title>Registro de Usuario</title>
    </head>
    <body>
        <header style="height: 70px">
            <h2 class="text-center text-light">Admin <span class="badge badge-primary">Users</span></h2> 
        </header>
        <div>
            <div class="container">          
                <form class="form-group" action="UserController" method="post">
                    <span class="badge badge-success" id="textLogin">REGISTRO</span>
                    <div class="form-group">
                        <label for="lblnombre">Nombre: </label>
                        <input type="text" name="nombres">                     
                    </div>


                    <div class="form-group">
                        <label for="apellidos">Apellidos: </label>
                        <input type="text" name="apellidos" >
                    </div>


                    <div class="form-group">
                        <label for="email">Email: </label>
                        <input type="text" name="email" >

                    </div>
                    <div class="form-group">
                        <label for="telefono">Teléfono: </label>
                        <input type="number" name="telefono" >
                    </div>
                    <div class="form-group">
                        <label for="pais">País:</label>
                        <select name="pais" id="pais" onchange="cargarCiudades();">
                            <option value="">Seleccione un país...</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="ciudad">Ciudad:</label>
                        <select name="ciudad" id="ciudad" >
                            <option value="">Seleccione una ciudad...</option>
                        </select>                               
                    </div>
                    <input class="button border-primary" type="submit" value="Crear Perfil" id="registrar">

                </form> 
            </div>
        </div>
        <script src="bootstrap4/js/bootstrap.min.js"></script>   
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
        <script src="Js/code.js"></script> 
    </body>

</html>
