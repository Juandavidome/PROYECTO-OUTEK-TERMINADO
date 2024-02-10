<%-- 
    Document   : ActualizarPedido
    Created on : 23/03/2023, 10:00:14 PM
    Author     : juand
--%>

<%@page import="ModeloVO.PedidoVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Sesiones.jsp" %>
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
     <title>Actualizar Pedido</title>
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
                                 <a class="nav-link" href="RegistrarUsu.jsp">Registrar Empleados</a>
                              </li>
                              <li class="nav-item">
                                 <a class="nav-link" href="ConsultarUsu.jsp">Consultar Usuarios</a>
                              </li>
                              <li class="nav-item">
                                 <a class="nav-link" href="ConsultarPedidos.jsp">Consultar Pedidos</a>
                              </li>
                               <form method="post" action="Sesiones">
                                  <input type="submit" value="Cerrar Sesion" class="btn btn-outline-dark">
                              </form>
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
            PedidoVO peVO = (PedidoVO) request.getAttribute("¡El pedido encontrado!");
            if (peVO != null) {
        %>
            <form align="center" method="post" action="PedidoControlador">
                
                <h4 align="center">Actualizar Pedido</h4>

                <label>FECHA</label>
                <input type="date" name="PedFecha" value="<%=peVO.getPedFecha()%>" placeholder="Ingrese la Fecha"><br>

                <label>DESCRIPCION</label>
                <input type="text" name="PedDescripcion" value="<%=peVO.getPedDescripcion()%>"placeholder="Ingrese la Descripcion"><br>

                <label>METODO DE PAGO</label>
                <input type="text" name="PedMetodoPago" value="<%=peVO.getPedMetodoPago()%>"placeholder="Ingrese el Metodo De Pago"><br>

                <label>ESTADO</label>
                <input type="text" name="PedEstado" value="<%=peVO.getPedEstado()%>"placeholder="Ingrese el Estado"><br>
                <label>Por favor seleccionar: "Activo" o "Inactivo"</label>
                <br>
                
                <input type="submit" value="Actualizar">
                <input type="hidden" name="opcion" value="2">
                <%
                if (request.getAttribute("mensajeError") != null) {%>
        ${mensajeError}
        <%} else {%>
        ${mensajeExito}
        <%}%>
            </form>
                  <%}%>
    </body>
</html>
