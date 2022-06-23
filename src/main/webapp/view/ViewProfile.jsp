<%-- 
    Author     : Tatiana Salazar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="Css/stylesProfile.css">
        <title>UserProfile</title>
    </head>
    <body>
        <div class="container d-flex justify-content-center">
            <div class="card p-3 py-4">
                <div class="text-center"> 
                    <img src="https://i.imgur.com/stD0Q19.jpg" width="100" class="rounded-circle">
                    <h3 class="mt-2">${user.getNombre()} ${user.getApellido()}</h3>
                    <span class="mt-1 clearfix" >Android Developer</span>
 
                    <div class="row-4">

                        <div>
                            <h5>${user.getEmail()}</h5>
                        </div>
                        <div >
                            <h5>${user.getTelefono()}</h5>
                        </div>
                        <div >
                            <h5>${user.getPais()}</h5>
                        </div>
                        <div >
                            <h5>${user.getCiudad()}</h5>
                        </div>
                    </div>

                    <hr class="line">

                    <small class="mt-4">I am an android developer working at google Inc at california,USA</small>                  
                    <div class="social-buttons mt-5"> 
                        <button class="neo-button"><i class="fa fa-facebook fa-1x"></i> </button> 
                        <button class="neo-button"><i class="fa fa-linkedin fa-1x"></i></button> 
                        <button class="neo-button"><i class="fa fa-google fa-1x"></i> </button> 
                        <button class="neo-button"><i class="fa fa-youtube fa-1x"></i> </button>
                        <button class="neo-button"><i class="fa fa-twitter fa-1x"></i> </button>
                    </div>

                    <div class="profile mt-5">
                        <button class="profile_button px-5">View profile</button>
                    </div>

                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    </body>
</html>
