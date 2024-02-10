<%-- 
    Document   : Cliente
    Created on : 13/03/2023, 08:34:25 PM
    Author     : User
--%>
<%@page import="util.ConexionBd"%>
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
     <title>TECHNOLOGY</title>
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
          <div class="loader"><img src="images/Logo..png" alt="#" /></div>
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
                  <div class="col-xl-9 col-lg-9 col-md-9 col-sm-9">
                     <nav class="navigation navbar navbar-expand-md navbar-dark ">
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample04" aria-controls="navbarsExample04" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarsExample04">
                           <ul class="navbar-nav mr-auto">
                              <li class="nav-item active">
                                 <a class="nav-link" href="Index.jsp">Inicio</a>
                              </li>
                              <li class="nav-item">
                                 <a class="nav-link" href="AcercaDe.jsp">Acerca De</a>
                              </li>
                              <li class="nav-item">
                                 <a class="nav-link" href="Categorias.jsp">Productos</a>
                              </li>
                              <li class="nav-item">
                                 <a class="nav-link" href="Contacto.jsp">Contactanos</a>
                              </li>
                              <li class="nav-item d_none login_btn">
                                 <a class="nav-link" href="IniciarSesion.jsp">Iniciar Sesion</a>
                              </li>
                              <li class="nav-item d_none">
                                 <a class="nav-link" href="RegistrarCliente.jsp">Registrarse</a>
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
      <!-- banner -->
      <section class="banner_main">
         <div id="banner1" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
               <li data-target="#banner1" data-slide-to="0" class="active"></li>
               <li data-target="#banner1" data-slide-to="1"></li>
               <li data-target="#banner1" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
               <div class="carousel-item active">
                  <div class="container">
                     <div class="carousel-caption">
                        <div class="text-bg">
                           <h1> <span class="blu">BIENVENIDO A <br></span>TECHNOLOGY CHEK-OUT</h1>
                           <figure><img src="images/msigamingxtrio-1679071423366.jpg" alt="#"/></figure>
                           <a class="read_more" href="#">Compra ahora</a>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="carousel-item">
                  <div class="container">
                     <div class="carousel-caption">
                        <div class="text-bg">
                           <h1> <span class="blu">LA MEJOR<br></span>TIENDA DE TECNOLOGIA</h1>
                           <figure><img src="images/razer-services-OGimage-1200x630.jpg" alt="#"/></figure>
                           <a class="read_more" href="#">Compra ahora</a>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="carousel-item">
                  <div class="container">
                     <div class="carousel-caption">
                        <div class="text-bg">
                           <h1> <span class="blu">JUNTOS POR UNA<br></span>BUENA COMPRA</h1>
                           <figure><img src="images/maxresdefault.jpg" alt="#"/></figure>
                           <a class="read_more" href="#">Compra ahora</a>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <a class="carousel-control-prev" href="#banner1" role="button" data-slide="prev">
            <i class="fa fa-arrow-left" aria-hidden="true"></i>
            </a>
            <a class="carousel-control-next" href="#banner1" role="button" data-slide="next">
            <i class="fa fa-arrow-right" aria-hidden="true"></i>
            </a>
         </div>
      </section>
      <!-- end banner -->
      <!-- about section -->
      <div class="about">
         <div class="container">
            <div class="row d_flex">
               <div class="col-md-5">
                  <div class="about_img">
                     <figure><img src="images/D_NQ_NP_837235-MCO45773047120_042021-O.jpg" alt="#"/></figure>
                  </div>
               </div>
               <div class="col-md-7">
                  <div class="titlepage">
                     <h2>Acerca de nuestra tienda</h2>
                     <p>En nuestra tienda de tecnología, ofrecemos una amplia variedad de productos y servicios tecnológicos de última generación, para satisfacer las necesidades de nuestros clientes más exigentes. Contamos con productos de alta calidad y marcas reconocidas en el mercado, incluyendo procesadores, tarjetas de video, mouse, teclados, accesorios, periféricos y mucho más.</p>
                  </div>
                  <a class="read_more" href="#">Leer Más</a>
               </div>
            </div>
         </div>
      </div>
      <!-- about section -->
      <!-- Our  Glasses section -->
      <div class="glasses">
         <div class="container">
            <div class="row">
               <div class="col-md-10 offset-md-1">
                  <div class="titlepage">
                     <h2>TODOS NUESTROS PRODUCTOS</h2>
                     <p>Nos preocupamos por la satisfacción de nuestros clientes, por lo que nos esforzamos por ofrecer solo productos de alta calidad y durabilidad. Sabemos que nuestros clientes esperan lo mejor, y por eso trabajamos arduamente para superar sus expectativas.
                     </p>
                  </div>
               </div>
            </div>
         </div>
         <div class="container-fluid">
            <div class="row">
               <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
                  <div class="glasses_box">
                     <figure><img src="images/16359.png" alt="#"/></figure>
                     <h3><span class="blu">$</span>703.000</h3>
                     <p>CAJA ASUS TUF GAMING GT 301 VIDRIO TEMPLADO + FAN 3 ARGB NEGRA</p>
                  </div>
               </div>
               <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
                  <div class="glasses_box">
                     <figure><img src="images/16317.1.png" alt="#"/></figure>
                     <h3><span class="blu">$</span>1.570.000</h3>
                     <p>CAJA ATX GAMER COUGAR CONQUER VIDRIO TEMPLADO</p>
                  </div>
               </div>
               <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
                  <div class="glasses_box">
                     <figure><img src="images/21047.png" alt="#"/></figure>
                     <h3><span class="blu">$</span>292.000</h3>
                     <p>TECLADO COOLER MASTER MS111 RGB</p>
                  </div>
               </div>
               <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
                  <div class="glasses_box">
                     <figure><img src="images/21055.png" alt="#"/></figure>
                     <h3><span class="blu">$</span>120.000</h3>
                     <p>COMBO TRUST GAMER AZOR GXT 838 TECLADO + MOUSE RGB</p>
                  </div>
               </div>
               <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
                  <div class="glasses_box">
                     <figure><img src="images/31155.png" alt="#"/></figure>
                     <h3><span class="blu">$</span>209.000</h3>
                     <p>AUDIFONOS LOGITECH G333 KDA BLANCO</p>
                  </div>
               </div>
               <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
                  <div class="glasses_box">
                     <figure><img src="images/31165.1.png" alt="#"/></figure>
                     <h3><span class="blu">$</span>560.000</h3>
                     <p>DIADEMA GAMER LOGITECH G PRO X EDICION LOL</p>
                  </div>
               </div>
               <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
                  <div class="glasses_box">
                     <figure><img src="images/31146.png" alt="#"/></figure>
                     <h3><span class="blu">$</span>773.000</h3>
                     <p>DIADEMA GAMER LOGITECH G733 INALAMBRICA BLANCA KDA</p>
                  </div>
               </div>
               <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
                  <div class="glasses_box">
                     <figure><img src="images/46079.png" alt="#"/></figure>
                     <h3><span class="blu">$</span>70.000</h3>
                     <p>PAD MOUSE GAMER XPG RGB BATTLEGROUND L</p>
                  </div>
               </div>
               <div class="col-md-12">
                  <a class="read_more" href="#">Leer Mas</a>
               </div>
            </div>
         </div>
      </div>
      <!-- end Our  Glasses section -->
      <!-- Our shop section -->
      <div id="about" class="shop">
         <div class="container-fluid">
            <div class="row">
               <div class="col-md-5">
                  <div  class="shop_img">
                     <figure><img src="images/asus-rog-strix-helios-2.jpg" alt="#"/></figure>
                  </div>
               </div>
               <div class="col-md-7 padding_right0">
                  <div class="max_width">
                     <div class="titlepage">
                        <h2>LOS MEJORES PRODUCTOS DEL MERCADO</h2>
                        <p>En nuestra tienda de tecnología, nos aseguramos de tener los mejores productos del mercado para ofrecer a nuestros clientes. Nos dedicamos a buscar constantemente las últimas tendencias y novedades en tecnología, y trabajamos arduamente para incorporarlos a nuestro inventario.
                        <br>
                            Además, seleccionamos cuidadosamente cada producto que ofrecemos en nuestra tienda, asegurándonos de que cumplan con nuestros altos estándares de calidad y durabilidad. Así, nuestros clientes pueden tener la certeza de que están comprando productos de la más alta calidad y con el mejor desempeño.
                        </p>
                        <a class="read_more" href="#">Compra ahora</a>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- end Our shop section -->
      <!-- clients section -->
      <div class="clients">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="titlepage">
                     <h2>Que opinan nuestros Clientes</h2>
                     <p>Saber tu opinion nos importa por eso contamos con escritos de clientes que nos compran a diario.</p>
                  </div>
               </div>
            </div>
            <div class="row">
               <div class="col-md-12">
                  <div id="myCarousel" class="carousel slide clients_Carousel " data-ride="carousel">
                     <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                     </ol>
                     <div class="carousel-inner">
                        <div class="carousel-item active">
                           <div class="container">
                              <div class="carousel-caption ">
                                 <div class="row">
                                    <div class="col-md-12">
                                       <div class="clients_box">
                                          <figure><img src="images/istockphoto-1399395748-612x612.jpg" alt="#"/></figure>
                                          <h3>Valentina Giraldo</h3>
                                          <p>Me encanta comprar en esta tienda de tecnología, siempre encuentro los productos más avanzados y de alta calidad en el mercado. Además, el equipo de expertos siempre está disponible para ayudarme a elegir el producto que mejor se adapte a mis necesidades. ¡Siempre salgo satisfecho con mi compra y recomiendo esta tienda a todos mis amigos y familiares!</p>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="carousel-item">
                           <div class="container">
                              <div class="carousel-caption">
                                 <div class="row">
                                    <div class="col-md-12">
                                       <div class="clients_box">
                                          <figure><img src="images/Julian.jpg" alt="#"/></figure>
                                          <h3>Julian Camilo</h3>
                                          <p>He estado comprando en esta tienda de tecnología durante años y siempre me sorprenden con su gran selección de productos y marcas de alta calidad. Además, el personal es extremadamente servicial y siempre está dispuesto a responder mis preguntas y ayudarme a encontrar los productos que necesito. Definitivamente, recomendaría esta tienda a cualquier persona que busque los mejores productos tecnológicos.</p>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="carousel-item">
                           <div class="container">
                              <div class="carousel-caption">
                                 <div class="row">
                                    <div class="col-md-12">
                                       <div class="clients_box">
                                          <figure><img src="images/Ibañez.jpg" alt="#"/></figure>
                                          <h3>David Ibañez</h3>
                                          <p>Me encanta la experiencia de compra en esta tienda de tecnología. El ambiente es moderno y atractivo, y siempre hay algo nuevo que ver. Además, la selección de productos es increíble, y siempre encuentro lo que necesito. Lo mejor de todo es que el equipo de expertos está siempre disponible para brindar asesoramiento y responder mis preguntas. ¡Siempre salgo de esta tienda con una sonrisa en mi rostro y un nuevo producto tecnológico en mis manos!</p>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
                     <i class='fa fa-angle-left'></i>
                     </a>
                     <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
                     <i class='fa fa-angle-right'></i>
                     </a>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- end clients section -->
      <!-- contact section -->
      <div id="contact" class="contact">
         <div class="container">
            <div class="row">
               <div class="col-md-6">
                  <form id="request" class="main_form">
                     <div class="row">
                        <div class="col-md-12 ">
                           <h3>Contact Us</h3>
                        </div>
                        <div class="col-md-12 ">
                           <input class="contactus" placeholder="Nombre" type="type" name="Name"> 
                        </div>
                        <div class="col-md-12">
                           <input class="contactus" placeholder="Numero De Celular" type="type" name="Phone Number"> 
                        </div>
                        <div class="col-md-12">
                           <input class="contactus" placeholder="Correo" type="type" name="Email">                          
                        </div>
                        <div class="col-md-12">
                           <input class="contactusmess" placeholder="Mensaje" type="type" Message="Name">
                        </div>
                        <div class="col-md-12">
                           <button class="send_btn">Enviar</button>
                        </div>
                     </div>
                  </form>
               </div>
            </div>
         </div>
         <div class="container-fluid">
            <div class="map_section">
               <div id="map">
               </div>
            </div>
         </div>
      </div>
      </div>
      <!-- end contact section -->
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
      <script>
         // This example adds a marker to indicate the position of Bondi Beach in Sydney,
         // Australia.
         function initMap() {
           var map = new google.maps.Map(document.getElementById('map'), {
             zoom: 11,
             center: {lat: 40.645037, lng: -73.880224},
             });
         
         var image = 'images/maps-and-flags.png';
         var beachMarker = new google.maps.Marker({
             position: {lat: 40.645037, lng: -73.880224},
             map: map,
             icon: image
           });
         }
      </script>
      <!-- google map js -->
      <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA8eaHt9Dh5H57Zh0xVTqxVdBFCvFMqFjQ&callback=initMap"></script>
      <!-- end google map js --> 
   </body>
</html>
