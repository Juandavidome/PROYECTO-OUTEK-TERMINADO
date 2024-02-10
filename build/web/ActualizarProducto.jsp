<%-- 
    Document   : ActualizarProducto
    Created on : 16/03/2023, 10:40:08 PM
    Author     : valen
--%>

<%@page import="ModeloVO.CategoriaVO"%>
<%@page import="ModeloDAO.CategoriaDAO"%>
<%@page import="ModeloVO.ProductoVO"%>
<%@page import="ModeloDAO.ProductoDAO"%>
<%@page import="util.ConexionBd"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <head>
              <link rel="shortcut icon" href="images/Logo..png">

       <!-- basic -->
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- site metas --> 
     <title>Actualizar Producto</title>
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
    </head>
    <body>
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
                                 <a class="nav-link" href="PersonalVentas.jsp">Inicio</a>
                              </li>
                             
                              <li class="nav-item">
                                 <a class="nav-link" href="RegistrarProducto.jsp">Registrar Producto</a>
                              </li>
                                <li class="nav-item">
                                 <a class="nav-link" href="ConsultarProducto.jsp">Consultar Producto</a>
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
            ProductoVO proVO = (ProductoVO) request.getAttribute("¡El producto encontrado!");
            if (proVO != null) {
        %>
        <div class="container">
            <form align="center" method="post" action="ProductoControlador" class="row g-3 needs-validation" novalidate >
                <h1 align="center">Actualizar Producto</h1><br>

                
                <div class="form-group">
                    <div class="row">
                        <div class="col-md-6" >
                            <label>Modelo</label>
                            <input type="text" class="form-control" name="proModelo"  value="<%=proVO.getProModelo()%>" required>
                            <div class="invalid-feedback">
                                Ingrese el modelo
                            </div>

                        </div>
                        <div class="col-md-6" >
                            <label>Descripcion</label>
                            <input type="text" class="form-control" name="proDescripcion"  value="<%=proVO.getProDescripcion()%>"  required>
                            <div class="invalid-feedback">
                                Ingrese una descripción
                            </div>

                        </div>
                    </div>
                </div>
                
                 <div class="form-group" >
                     <label>Nombre</label>
                    <input type="email" class="form-control" name="proNombre" value="<%=proVO.getProNombre()%>"  required>
                    <div class="invalid-feedback">
                        Ingrese un Nombre
                    </div>

                </div>
                <div class="form-group" >
                    <label>Precio</label>
                    <input type="text" class="form-control" name="proPrecioVenta"  value="<%=proVO.getProPrecioVenta()%>"   required>
                    <div class="invalid-feedback">
                        Ingrese el Precio
                    </div>
                </div>
                <div class="form-group" >
                    <label>Cantidad</label>
                    <input type="text" class="form-control" name="proCantidad" value="<%=proVO.getProEstado()%>"  required>
                    <div class="invalid-feedback">
                        Ingrese la Cantidad
                    </div>
                </div>
                
                
                      
                    <select name="proCategoria"  class="form-select" aria-label="Default select example">
                        
                         <option>Seleccione una Categoria...</option>
                        <%
                            CategoriaDAO catDAO = new CategoriaDAO();
                            for (CategoriaVO catVO : catDAO.listar()) {
                        %>
                        <option value="<%=catVO.getCatId()%>"><%=catVO.getCatTipo()%></option>
                        <%}%>
                    </select>
                      <div class="invalid-feedback">
                        Ingrese una Categoria
                    </div>
                    
           <div class="form-group" >
               <label>Id</label>
                    <input type="number" class="form-control" name="proId"value="<%=proVO.getProId()%>"   required>
                    <div class="invalid-feedback">
                        Ingrese el Id
                    </div>
                </div>
                
                    
             
                 <div class="form-group" >
                     <label>Imagen</label>
                    <input type="file" class="form-control" name="proImagen" value="<%=proVO.getProImagen() %>"  required>
                    <div class="invalid-feedback">
                        Ingrese la Imagen
                    </div>
                </div>
                    
          
                    <div class="button" >
                <input type="submit" value="Actualizar">
                <input type="hidden" name="opcion" value="2">
            
        <%}%>

        <%
                if (request.getAttribute("mensajeError") != null) {%>
        ${mensajeError}
        <%} else {%>
        ${mensajeExito}
        <%}%>
        <br>
        </div>
         </form>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
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
    </body>
</html>
