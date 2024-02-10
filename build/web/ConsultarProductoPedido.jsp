<%-- 
    Document   : ConsultarProductoPedido
    Created on : 24/03/2023, 08:14:28 AM
    Author     : juand
--%>

<%@page import="ModeloVO.ProductoVO"%>
<%@page import="ModeloDAO.ProductoDAO"%>
<%@page import="ModeloDAO.ProductoDAO"%>
<%@page import="ModeloVO.RolVO"%>
<%@page import="ModeloDAO.RolDAO"%>
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
     <title>Realizar Pedido</title>
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
      <script>
        window.addEventListener('load', function() {
          var randomNumber = Math.floor(Math.random() * 100) + 1;
          var currentDate = new Date().toISOString().slice(0,10);
          document.getElementById("random-number").innerHTML = randomNumber;
          document.getElementById("PedId").value = randomNumber;
          document.getElementById("fecha-actual").innerHTML = currentDate;
          document.getElementById("PedFecha").value = currentDate;
        });
      </script>
     
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
                              <a href="Index.jsp"><img src="images/OUTEK ACTUAL (1) (1).png" alt="#" /></a>
                           </div>
                        </div>
                     </div>     
                  </div>
                  <div class="collapse navbar-collapse" id="navbarsExample04">
                           <ul class="navbar-nav mr-auto">
                              <li class="nav-item active">
                                 <a class="nav-link" href="Cliente.jsp">Inicio</a>
                              </li>
                              <li class="nav-item">
                                 <a class="nav-link" href="Categorias1.jsp">Productos</a>
                              </li>
                              <li class="nav-item d_none login_btn">
                                 <a class="nav-link" href="ConsultarCliente.jsp">Realizar Pedido</a>
                              </li>
                              <li class="nav-item">
                                  <a class="nav-link" href="DatosCli.jsp">Actualizar Datos</a>
                              </li>
                              <form method="post" action="Sesiones" >
                                  <div class="button">
                                  <input type="submit" value="Cerrar Sesion" class="btn btn-outline-dark"> 
                                  </div>
                              </form>
                           </ul>
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
    </script>
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
        <form align="center" method = "post" action="ProductoControlador">
        <label class="details">ESCOJA EL PRODUCTO QUE DESEA AGREGAR AL PEDIDO</label><br>
                    <select name="proId">
                        <option>Seleccione...</option>
                        <%
                            ProductoDAO proDAO = new ProductoDAO();
                            for (ProductoVO proVO : proDAO.listar()) 
                            {
                        %>
                        <option value="<%=proVO.getProId()%>"><%=proVO.getProNombre()%></option>
                        <%}%>
                   </select>
                   <br>
                   <br>
                    <input class="botons" type="submit" value="Registrar Producto A Pedido">
                    <input type="hidden" name="opcion" value="6">
        </form>
                     <%
                if (request.getAttribute("mensajeError") != null) {%>
    ${mensajeError}
    <%} else {%>
    ${mensajeExito}
    <%}%>
    </body>
</html>
