<%-- 
    Document   : Categorias1
    Created on : 26/03/2023, 10:00:19 AM
    Author     : juand
--%>

<%@page import="ModeloVO.ProductoVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.ProductoDAO"%>
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
      <title>PRODUCTOS</title>
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
<body class="main-layout position_head">
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
                              <a href="Cliente.jsp"><img src="images/OUTEK ACTUAL (1) (1).png" alt="#" /></a>
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
                                 <a class="nav-link" href="Categorias1.jsp">Productos</a>
                              </li>
                              <li class="nav-item d_none">
                                 <a class="nav-link" href="ConsultarCliente.jsp">RealizarPedido</a>
                              </li>
                           </ul>
                        </div>
                     </nav>
                  </div>
               </div>
            </div>
         </div>
      </header>
      <!-- end header inner -->
      <!-- end header -->
      <!-- Our  Glasses section -->
      <div class="glasses">
         <div class="container">
            <div class="row">
               <div class="col-md-10 offset-md-1">
                  <div class="titlepage">
                     <h2>TODOS LOS PRODUCTOS</h2>
                     <p>Aqui encontraras el mejor catalogo de productos del mercado.
                     </p>
                  </div>
               </div>
            </div>
         </div>
         <%
                ProductoDAO proDAO = new ProductoDAO();

                ArrayList<ProductoVO> lista = proDAO.listar();
                int salto = 0;
                for (ProductoVO p : lista) {
            %>
                    <img url="IMG/<%=p.getProImagen()%>" class="card-img-top" alt="..." width="140" height="140">
                    <div class="card-body">
                        <h5 class="card-title"><%=p.getProNombre()%></h5>
                        <p class="card-text"><%=p.getProCategoria()%></p>
                    </div>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item"><%=p.getProDescripcion()%></li>
                        <li class="list-group-item">$.<%=p.getProPrecioVenta()%></li>
                    </ul>

                    <a href="anadirCarrito.jsp?id=<%= p.getProId()%>">Añadir Al Carrito</a>                    
                    <br>
                    <br>
              
            <%
                salto++;
                if (salto == 2) {

            %>
            <tr> 
                <%                            salto = 0;
                        }
                    }
                %>
      <!-- end Our  Glasses section -->
      <!--  footer -->
            <footer>
         <div class="footer">
            <div class="container">
               <div class="row">
                  <div class="col-md-8 offset-md-2">
                     <ul class="location_icon">
                        <li><a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i></a><br>Unilago, Cra. 15 #78-33, Localidad de Chapinero, Bogotá, Cundinamarca</li>
                        <li><a href="#"><i class="fa fa-phone" aria-hidden="true"></i></a><br> +57 3044127844</li>
                        <li><a href="#"><i class="fa fa-envelope" aria-hidden="true"></i></a><br> technology@gmail.com</li>
                     </ul>
                  </div>
               </div>
            </div>
            <div class="copyright">
               <div class="container">
                  <div class="row">
                     <div class="col-md-12">
                        <p>© 2023 Reservados Todos Los Derechos</a></p>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </footer>
      <!-- end footer -->
      <!-- Javascript files-->
      <script src="js/jquery.min.js"></script>
      <script src="js/popper.min.js"></script>
      <script src="js/bootstrap.bundle.min.js"></script>
      <script src="js/jquery-3.0.0.min.js"></script>
      <!-- sidebar -->
      <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
      <script src="js/custom.js"></script>
              </body>
</html>
