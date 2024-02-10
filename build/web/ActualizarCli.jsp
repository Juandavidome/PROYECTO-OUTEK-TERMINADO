<%-- 
    Document   : ActualizarCli
    Created on : 22/03/2023, 05:31:51 PM
    Author     : APRENDIZ
--%>

<%@page import="ModeloVO.UsuarioVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
              <link rel="shortcut icon" href="images/Logo..png">

       <!-- basic -->
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- site metas --> 
     <title>Actualizar Cliente</title>
      <meta name="keywords" content="">
      <meta name="description" content="">
      <meta name="author" content="">
      <!-- bootstrap css -->
      <link rel="stylesheet" href="css/bootstrap.min.css">
      <!-- style css -->
      <link rel="stylesheet" href="css/style.css">
      <!-- Responsive-->
      <link rel="stylesheet" href="css/responsive.css">
      <!-- fevicon -->
      <link rel="icon" href="images/fevicon.png" type="image/gif" />
      <!-- Scrollbar Custom CSS -->
      <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
      <!-- Tweaks for older IEs-->
      <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
      <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->    
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">

      <link href="css/style_1.css" rel="stylesheet" type="text/css"/>
    </head>
    <body class="main-layout">
      <!-- loader  -->
      <div class="loader_bg">
         <div class="loader"><img src="images/loading.gif" alt="#" /></div>
      </div>
      <!-- end loader -->
      <!-- header -->
      <header>
         <!-- header inner -->
         <div class="header">
            <div class="container-fluid">
               <div class="row">
                  <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col logo_section">
                     <div class="full">
                        <div class="center-desk">
                           <div class="logo">
                              <a href="index.html"><img src="images/OUTEK ACTUAL (1) (1).png" alt="#" /></a>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-xl-9 col-lg-9 col-md-9 col-sm-9">
                     <nav class="navigation navbar navbar-expand-md navbar-dark ">
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample04" aria-controls="navbarsExample04" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarsExample04">
                           <ul class="navbar-nav mr-auto">
                              <li class="nav-item active">
                                 <a class="nav-link" href="Cliente.jsp">Inicio</a>
                              </li>
                              <li class="nav-item">
                                 <a class="nav-link" href="about.html">Acerca De</a>
                              </li>
                              
                              <li class="nav-item">
                                 <a class="nav-link" href="glasses.html">Productos</a>
                              </li>
                          
                              <li class="nav-item">
                                 <a class="nav-link" href="contact.html">Contactanos</a>
                              </li>
                              <li class="nav-item">
                                 <a class="nav-link" href="DatosCli.jsp">Consultar</a>
                              </li>
                             
                           </ul>
                        </div>
                     </nav>
                  </div>
               </div>
            </div>
         </div>
      </header>
      <!-- end footer -->
      <!-- Javascript files-->
      <script src="js/jquery.min.js"></script>
      <script src="js/popper.min.js"></script>
      <script src="js/bootstrap.bundle.min.js"></script>
      <script src="js/jquery-3.0.0.min.js"></script>
      <!-- sidebar -->
      <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
      <script src="js/custom.js"></script>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
        <%
            UsuarioVO usuVO = (UsuarioVO) request.getAttribute("¡Cliente encontrado!");
            if (usuVO != null) {
                %>
                
                <div class="container">
            <form  class="row g-3 needs-validation" novalidate align="center" method="post" action="UsuarioControlador">
                <h1 align="center">Actualizar Cliente</h1><br>
                
               <div class="form-group">
                    <div class="row">
                        <div class="col-md-6" >
                            <label>Nombre</label>
                            <input type="text" class="form-control" name="usuNombre"  value="<%=usuVO.getUsuNombre() %>" required>
                            <div class="invalid-feedback">
                                Ingrese su nombre
                            </div>

                        </div>
                        <div class="col-md-6" >
                            <label>Apellido</label>
                            <input type="text" class="form-control" name="usuApellido"  value="<%=usuVO.getUsuApellido() %>"  required>
                            <div class="invalid-feedback">
                                Ingrese su apellido
                            </div>

                        </div>
                    </div>
                </div>
                
                <div class="form-group" >
                    <label>Correo Electronico</label>
                    <input type="email" class="form-control" name="usuCorreo"  value="<%=usuVO.getUsuCorreo() %>"  required>
                    <div class="invalid-feedback">
                        Ingrese su correo electronico
                    </div>

                </div>
                <div class="form-group" >
                    <label>Dirección</label>
                    <input type="text" class="form-control" name="usuDireccion"  value="<%=usuVO.getUsuDireccion() %>"   required>
                    <div class="invalid-feedback">
                        Ingrese una dirección
                    </div>
                </div>
                
                  <div class="form-group" >
                      <label>Telefono</label>
                    <input type="number" class="form-control" name="usuTelefono"  value="<%=usuVO.getUsuTelefono() %>"  required>
                    <div class="invalid-feedback">
                        Ingrese su número telefonico
                    </div>

                </div>
                <div class="form-group" >
                    <label>Cedula</label>
                    <input type="number" class="form-control" name="usuCedula"  value="<%=usuVO.getUsuCedula() %>"  readonly onmousedown="return false;" required  >
                    <div class="invalid-feedback">
                        Ingrese su cedula
                    </div>

                </div>
                
                <div class="button" >
                <input type="submit" value="Actualizar ">
                <input type="hidden" name="opcion" value="10">
                </div>
                <%}%>

                 <%
                        if (request.getAttribute("mensajeError") != null) {%>
                ${mensajeError}

                <%} else {%>
                ${mensajeExito}
                <%}%>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js" integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" crossorigin="anonymous"></script>
<script>
            // Example starter JavaScript for disabling form submissions if there are invalid fields
(() => {
  'use strict'

  // Fetch all the forms we want to apply custom Bootstrap validation styles to
  const forms = document.querySelectorAll('.needs-validation')

  // Loop over them and prevent submission
  Array.from(forms).forEach(form => {
    form.addEventListener('submit', event => {
      if (!form.checkValidity()) {
        event.preventDefault()
        event.stopPropagation()
      }

      form.classList.add('was-validated')
    }, false)
  })
})()
        </script>
    </body>
</html>
