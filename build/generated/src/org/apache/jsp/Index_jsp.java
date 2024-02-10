package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import util.ConexionBd;

public final class Index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <link rel=\"shortcut icon\" href=\"images/Logo..png\">\n");
      out.write("    <!-- basic -->\n");
      out.write("      <meta charset=\"utf-8\">\n");
      out.write("      <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("      <!-- mobile metas -->\n");
      out.write("      <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("      <meta name=\"viewport\" content=\"initial-scale=1, maximum-scale=1\">\n");
      out.write("      <!-- site metas --> \n");
      out.write("     <title>TECHNOLOGY</title>\n");
      out.write("      <meta name=\"keywords\" content=\"\">\n");
      out.write("      <meta name=\"description\" content=\"\">\n");
      out.write("      <meta name=\"author\" content=\"\">\n");
      out.write("      <!-- bootstrap css -->\n");
      out.write("      <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n");
      out.write("      <!-- style css -->\n");
      out.write("      <link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("      <!-- Responsive-->\n");
      out.write("      <link rel=\"stylesheet\" href=\"css/responsive.css\">\n");
      out.write("      <!-- fevicon -->\n");
      out.write("      <link rel=\"icon\" href=\"images/fevicon.png\" type=\"image/gif\" />\n");
      out.write("      <!-- Scrollbar Custom CSS -->\n");
      out.write("      <link rel=\"stylesheet\" href=\"css/jquery.mCustomScrollbar.min.css\">\n");
      out.write("      <!-- Tweaks for older IEs-->\n");
      out.write("      <link rel=\"stylesheet\" href=\"https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css\">\n");
      out.write("      <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css\" media=\"screen\">\n");
      out.write("      <!--[if lt IE 9]>\n");
      out.write("      <script src=\"https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js\"></script>\n");
      out.write("      <script src=\"https://oss.maxcdn.com/respond/1.4.2/respond.min.js\"></script><![endif]-->    \n");
      out.write("    </head>\n");
      out.write("<body class=\"main-layout\">\n");
      out.write("      <!-- loader  -->\n");
      out.write("      <div class=\"loader_bg\">\n");
      out.write("          <div class=\"loader\"><img src=\"images/Logo..png\" alt=\"#\" /></div>\n");
      out.write("      </div>\n");
      out.write("      <!-- end loader -->\n");
      out.write("      <!-- header -->\n");
      out.write("      <header>\n");
      out.write("         <!-- header inner -->\n");
      out.write("         <div class=\"header\">\n");
      out.write("            <div class=\"container-fluid\">\n");
      out.write("               <div class=\"row\">\n");
      out.write("                  <div class=\"col-xl-3 col-lg-3 col-md-3 col-sm-3 col logo_section\">\n");
      out.write("                     <div class=\"full\">\n");
      out.write("                        <div class=\"center-desk\">\n");
      out.write("                           <div class=\"logo\">\n");
      out.write("                              <a href=\"Index.jsp\"><img src=\"images/OUTEK ACTUAL (1) (1).png\" alt=\"#\" /></a>\n");
      out.write("                           </div>\n");
      out.write("                        </div>\n");
      out.write("                     </div>     \n");
      out.write("                  </div>\n");
      out.write("                  <div class=\"col-xl-9 col-lg-9 col-md-9 col-sm-9\">\n");
      out.write("                     <nav class=\"navigation navbar navbar-expand-md navbar-dark \">\n");
      out.write("                        <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarsExample04\" aria-controls=\"navbarsExample04\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                        <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("                        </button>\n");
      out.write("                        <div class=\"collapse navbar-collapse\" id=\"navbarsExample04\">\n");
      out.write("                           <ul class=\"navbar-nav mr-auto\">\n");
      out.write("                              <li class=\"nav-item active\">\n");
      out.write("                                 <a class=\"nav-link\" href=\"Index.jsp\">Inicio</a>\n");
      out.write("                              </li>\n");
      out.write("                              <li class=\"nav-item\">\n");
      out.write("                                 <a class=\"nav-link\" href=\"AcercaDe.jsp\">Acerca De</a>\n");
      out.write("                              </li>\n");
      out.write("                              <li class=\"nav-item\">\n");
      out.write("                                 <a class=\"nav-link\" href=\"Categorias.jsp\">Productos</a>\n");
      out.write("                              </li>\n");
      out.write("                              <li class=\"nav-item\">\n");
      out.write("                                 <a class=\"nav-link\" href=\"Contacto.jsp\">Contactanos</a>\n");
      out.write("                              </li>\n");
      out.write("                              <li class=\"nav-item d_none login_btn\">\n");
      out.write("                                 <a class=\"nav-link\" href=\"IniciarSesion.jsp\">Iniciar Sesion</a>\n");
      out.write("                              </li>\n");
      out.write("                              <li class=\"nav-item d_none\">\n");
      out.write("                                 <a class=\"nav-link\" href=\"RegistrarCliente.jsp\">Registrarse</a>\n");
      out.write("                              </li>\n");
      out.write("                           </ul>\n");
      out.write("                        </div>\n");
      out.write("                     </nav>\n");
      out.write("                  </div>\n");
      out.write("               </div>\n");
      out.write("            </div>\n");
      out.write("         </div>\n");
      out.write("      </header>\n");
      out.write("      <!-- end header inner -->\n");
      out.write("      <!-- end header -->\n");
      out.write("      <!-- banner -->\n");
      out.write("      <section class=\"banner_main\">\n");
      out.write("         <div id=\"banner1\" class=\"carousel slide\" data-ride=\"carousel\">\n");
      out.write("            <ol class=\"carousel-indicators\">\n");
      out.write("               <li data-target=\"#banner1\" data-slide-to=\"0\" class=\"active\"></li>\n");
      out.write("               <li data-target=\"#banner1\" data-slide-to=\"1\"></li>\n");
      out.write("               <li data-target=\"#banner1\" data-slide-to=\"2\"></li>\n");
      out.write("            </ol>\n");
      out.write("            <div class=\"carousel-inner\">\n");
      out.write("               <div class=\"carousel-item active\">\n");
      out.write("                  <div class=\"container\">\n");
      out.write("                     <div class=\"carousel-caption\">\n");
      out.write("                        <div class=\"text-bg\">\n");
      out.write("                           <h1> <span class=\"blu\">BIENVENIDO A <br></span>TECHNOLOGY CHEK-OUT</h1>\n");
      out.write("                           <figure><img src=\"images/msigamingxtrio-1679071423366.jpg\" alt=\"#\"/></figure>\n");
      out.write("                           <a class=\"read_more\" href=\"#\">Compra ahora</a>\n");
      out.write("                        </div>\n");
      out.write("                     </div>\n");
      out.write("                  </div>\n");
      out.write("               </div>\n");
      out.write("               <div class=\"carousel-item\">\n");
      out.write("                  <div class=\"container\">\n");
      out.write("                     <div class=\"carousel-caption\">\n");
      out.write("                        <div class=\"text-bg\">\n");
      out.write("                           <h1> <span class=\"blu\">LA MEJOR<br></span>TIENDA DE TECNOLOGIA</h1>\n");
      out.write("                           <figure><img src=\"images/razer-services-OGimage-1200x630.jpg\" alt=\"#\"/></figure>\n");
      out.write("                           <a class=\"read_more\" href=\"#\">Compra ahora</a>\n");
      out.write("                        </div>\n");
      out.write("                     </div>\n");
      out.write("                  </div>\n");
      out.write("               </div>\n");
      out.write("               <div class=\"carousel-item\">\n");
      out.write("                  <div class=\"container\">\n");
      out.write("                     <div class=\"carousel-caption\">\n");
      out.write("                        <div class=\"text-bg\">\n");
      out.write("                           <h1> <span class=\"blu\">JUNTOS POR UNA<br></span>BUENA COMPRA</h1>\n");
      out.write("                           <figure><img src=\"images/maxresdefault.jpg\" alt=\"#\"/></figure>\n");
      out.write("                           <a class=\"read_more\" href=\"#\">Compra ahora</a>\n");
      out.write("                        </div>\n");
      out.write("                     </div>\n");
      out.write("                  </div>\n");
      out.write("               </div>\n");
      out.write("            </div>\n");
      out.write("            <a class=\"carousel-control-prev\" href=\"#banner1\" role=\"button\" data-slide=\"prev\">\n");
      out.write("            <i class=\"fa fa-arrow-left\" aria-hidden=\"true\"></i>\n");
      out.write("            </a>\n");
      out.write("            <a class=\"carousel-control-next\" href=\"#banner1\" role=\"button\" data-slide=\"next\">\n");
      out.write("            <i class=\"fa fa-arrow-right\" aria-hidden=\"true\"></i>\n");
      out.write("            </a>\n");
      out.write("         </div>\n");
      out.write("      </section>\n");
      out.write("      <!-- end banner -->\n");
      out.write("      <!-- about section -->\n");
      out.write("      <div class=\"about\">\n");
      out.write("         <div class=\"container\">\n");
      out.write("            <div class=\"row d_flex\">\n");
      out.write("               <div class=\"col-md-5\">\n");
      out.write("                  <div class=\"about_img\">\n");
      out.write("                     <figure><img src=\"images/D_NQ_NP_837235-MCO45773047120_042021-O.jpg\" alt=\"#\"/></figure>\n");
      out.write("                  </div>\n");
      out.write("               </div>\n");
      out.write("               <div class=\"col-md-7\">\n");
      out.write("                  <div class=\"titlepage\">\n");
      out.write("                     <h2>Acerca de nuestra tienda</h2>\n");
      out.write("                     <p>En nuestra tienda de tecnología, ofrecemos una amplia variedad de productos y servicios tecnológicos de última generación, para satisfacer las necesidades de nuestros clientes más exigentes. Contamos con productos de alta calidad y marcas reconocidas en el mercado, incluyendo procesadores, tarjetas de video, mouse, teclados, accesorios, periféricos y mucho más.</p>\n");
      out.write("                  </div>\n");
      out.write("                  <a class=\"read_more\" href=\"#\">Leer Más</a>\n");
      out.write("               </div>\n");
      out.write("            </div>\n");
      out.write("         </div>\n");
      out.write("      </div>\n");
      out.write("      <!-- about section -->\n");
      out.write("      <!-- Our  Glasses section -->\n");
      out.write("      <div class=\"glasses\">\n");
      out.write("         <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("               <div class=\"col-md-10 offset-md-1\">\n");
      out.write("                  <div class=\"titlepage\">\n");
      out.write("                     <h2>TODOS NUESTROS PRODUCTOS</h2>\n");
      out.write("                     <p>Nos preocupamos por la satisfacción de nuestros clientes, por lo que nos esforzamos por ofrecer solo productos de alta calidad y durabilidad. Sabemos que nuestros clientes esperan lo mejor, y por eso trabajamos arduamente para superar sus expectativas.\n");
      out.write("                     </p>\n");
      out.write("                  </div>\n");
      out.write("               </div>\n");
      out.write("            </div>\n");
      out.write("         </div>\n");
      out.write("         <div class=\"container-fluid\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("               <div class=\"col-xl-3 col-lg-3 col-md-6 col-sm-6\">\n");
      out.write("                  <div class=\"glasses_box\">\n");
      out.write("                     <figure><img src=\"images/16359.png\" alt=\"#\"/></figure>\n");
      out.write("                     <h3><span class=\"blu\">$</span>703.000</h3>\n");
      out.write("                     <p>CAJA ASUS TUF GAMING GT 301 VIDRIO TEMPLADO + FAN 3 ARGB NEGRA</p>\n");
      out.write("                  </div>\n");
      out.write("               </div>\n");
      out.write("               <div class=\"col-xl-3 col-lg-3 col-md-6 col-sm-6\">\n");
      out.write("                  <div class=\"glasses_box\">\n");
      out.write("                     <figure><img src=\"images/16317.1.png\" alt=\"#\"/></figure>\n");
      out.write("                     <h3><span class=\"blu\">$</span>1.570.000</h3>\n");
      out.write("                     <p>CAJA ATX GAMER COUGAR CONQUER VIDRIO TEMPLADO</p>\n");
      out.write("                  </div>\n");
      out.write("               </div>\n");
      out.write("               <div class=\"col-xl-3 col-lg-3 col-md-6 col-sm-6\">\n");
      out.write("                  <div class=\"glasses_box\">\n");
      out.write("                     <figure><img src=\"images/21047.png\" alt=\"#\"/></figure>\n");
      out.write("                     <h3><span class=\"blu\">$</span>292.000</h3>\n");
      out.write("                     <p>TECLADO COOLER MASTER MS111 RGB</p>\n");
      out.write("                  </div>\n");
      out.write("               </div>\n");
      out.write("               <div class=\"col-xl-3 col-lg-3 col-md-6 col-sm-6\">\n");
      out.write("                  <div class=\"glasses_box\">\n");
      out.write("                     <figure><img src=\"images/21055.png\" alt=\"#\"/></figure>\n");
      out.write("                     <h3><span class=\"blu\">$</span>120.000</h3>\n");
      out.write("                     <p>COMBO TRUST GAMER AZOR GXT 838 TECLADO + MOUSE RGB</p>\n");
      out.write("                  </div>\n");
      out.write("               </div>\n");
      out.write("               <div class=\"col-xl-3 col-lg-3 col-md-6 col-sm-6\">\n");
      out.write("                  <div class=\"glasses_box\">\n");
      out.write("                     <figure><img src=\"images/31155.png\" alt=\"#\"/></figure>\n");
      out.write("                     <h3><span class=\"blu\">$</span>209.000</h3>\n");
      out.write("                     <p>AUDIFONOS LOGITECH G333 KDA BLANCO</p>\n");
      out.write("                  </div>\n");
      out.write("               </div>\n");
      out.write("               <div class=\"col-xl-3 col-lg-3 col-md-6 col-sm-6\">\n");
      out.write("                  <div class=\"glasses_box\">\n");
      out.write("                     <figure><img src=\"images/31165.1.png\" alt=\"#\"/></figure>\n");
      out.write("                     <h3><span class=\"blu\">$</span>560.000</h3>\n");
      out.write("                     <p>DIADEMA GAMER LOGITECH G PRO X EDICION LOL</p>\n");
      out.write("                  </div>\n");
      out.write("               </div>\n");
      out.write("               <div class=\"col-xl-3 col-lg-3 col-md-6 col-sm-6\">\n");
      out.write("                  <div class=\"glasses_box\">\n");
      out.write("                     <figure><img src=\"images/31146.png\" alt=\"#\"/></figure>\n");
      out.write("                     <h3><span class=\"blu\">$</span>773.000</h3>\n");
      out.write("                     <p>DIADEMA GAMER LOGITECH G733 INALAMBRICA BLANCA KDA</p>\n");
      out.write("                  </div>\n");
      out.write("               </div>\n");
      out.write("               <div class=\"col-xl-3 col-lg-3 col-md-6 col-sm-6\">\n");
      out.write("                  <div class=\"glasses_box\">\n");
      out.write("                     <figure><img src=\"images/46079.png\" alt=\"#\"/></figure>\n");
      out.write("                     <h3><span class=\"blu\">$</span>70.000</h3>\n");
      out.write("                     <p>PAD MOUSE GAMER XPG RGB BATTLEGROUND L</p>\n");
      out.write("                  </div>\n");
      out.write("               </div>\n");
      out.write("               <div class=\"col-md-12\">\n");
      out.write("                  <a class=\"read_more\" href=\"#\">Leer Mas</a>\n");
      out.write("               </div>\n");
      out.write("            </div>\n");
      out.write("         </div>\n");
      out.write("      </div>\n");
      out.write("      <!-- end Our  Glasses section -->\n");
      out.write("      <!-- Our shop section -->\n");
      out.write("      <div id=\"about\" class=\"shop\">\n");
      out.write("         <div class=\"container-fluid\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("               <div class=\"col-md-5\">\n");
      out.write("                  <div  class=\"shop_img\">\n");
      out.write("                     <figure><img src=\"images/asus-rog-strix-helios-2.jpg\" alt=\"#\"/></figure>\n");
      out.write("                  </div>\n");
      out.write("               </div>\n");
      out.write("               <div class=\"col-md-7 padding_right0\">\n");
      out.write("                  <div class=\"max_width\">\n");
      out.write("                     <div class=\"titlepage\">\n");
      out.write("                        <h2>LOS MEJORES PRODUCTOS DEL MERCADO</h2>\n");
      out.write("                        <p>En nuestra tienda de tecnología, nos aseguramos de tener los mejores productos del mercado para ofrecer a nuestros clientes. Nos dedicamos a buscar constantemente las últimas tendencias y novedades en tecnología, y trabajamos arduamente para incorporarlos a nuestro inventario.\n");
      out.write("                        <br>\n");
      out.write("                            Además, seleccionamos cuidadosamente cada producto que ofrecemos en nuestra tienda, asegurándonos de que cumplan con nuestros altos estándares de calidad y durabilidad. Así, nuestros clientes pueden tener la certeza de que están comprando productos de la más alta calidad y con el mejor desempeño.\n");
      out.write("                        </p>\n");
      out.write("                        <a class=\"read_more\" href=\"#\">Compra ahora</a>\n");
      out.write("                     </div>\n");
      out.write("                  </div>\n");
      out.write("               </div>\n");
      out.write("            </div>\n");
      out.write("         </div>\n");
      out.write("      </div>\n");
      out.write("      <!-- end Our shop section -->\n");
      out.write("      <!-- clients section -->\n");
      out.write("      <div class=\"clients\">\n");
      out.write("         <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("               <div class=\"col-md-12\">\n");
      out.write("                  <div class=\"titlepage\">\n");
      out.write("                     <h2>Que opinan nuestros Clientes</h2>\n");
      out.write("                     <p>Saber tu opinion nos importa por eso contamos con escritos de clientes que nos compran a diario.</p>\n");
      out.write("                  </div>\n");
      out.write("               </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"row\">\n");
      out.write("               <div class=\"col-md-12\">\n");
      out.write("                  <div id=\"myCarousel\" class=\"carousel slide clients_Carousel \" data-ride=\"carousel\">\n");
      out.write("                     <ol class=\"carousel-indicators\">\n");
      out.write("                        <li data-target=\"#myCarousel\" data-slide-to=\"0\" class=\"active\"></li>\n");
      out.write("                        <li data-target=\"#myCarousel\" data-slide-to=\"1\"></li>\n");
      out.write("                        <li data-target=\"#myCarousel\" data-slide-to=\"2\"></li>\n");
      out.write("                     </ol>\n");
      out.write("                     <div class=\"carousel-inner\">\n");
      out.write("                        <div class=\"carousel-item active\">\n");
      out.write("                           <div class=\"container\">\n");
      out.write("                              <div class=\"carousel-caption \">\n");
      out.write("                                 <div class=\"row\">\n");
      out.write("                                    <div class=\"col-md-12\">\n");
      out.write("                                       <div class=\"clients_box\">\n");
      out.write("                                          <figure><img src=\"images/istockphoto-1399395748-612x612.jpg\" alt=\"#\"/></figure>\n");
      out.write("                                          <h3>Valentina Giraldo</h3>\n");
      out.write("                                          <p>Me encanta comprar en esta tienda de tecnología, siempre encuentro los productos más avanzados y de alta calidad en el mercado. Además, el equipo de expertos siempre está disponible para ayudarme a elegir el producto que mejor se adapte a mis necesidades. ¡Siempre salgo satisfecho con mi compra y recomiendo esta tienda a todos mis amigos y familiares!</p>\n");
      out.write("                                       </div>\n");
      out.write("                                    </div>\n");
      out.write("                                 </div>\n");
      out.write("                              </div>\n");
      out.write("                           </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"carousel-item\">\n");
      out.write("                           <div class=\"container\">\n");
      out.write("                              <div class=\"carousel-caption\">\n");
      out.write("                                 <div class=\"row\">\n");
      out.write("                                    <div class=\"col-md-12\">\n");
      out.write("                                       <div class=\"clients_box\">\n");
      out.write("                                          <figure><img src=\"images/Julian.jpg\" alt=\"#\"/></figure>\n");
      out.write("                                          <h3>Julian Camilo</h3>\n");
      out.write("                                          <p>He estado comprando en esta tienda de tecnología durante años y siempre me sorprenden con su gran selección de productos y marcas de alta calidad. Además, el personal es extremadamente servicial y siempre está dispuesto a responder mis preguntas y ayudarme a encontrar los productos que necesito. Definitivamente, recomendaría esta tienda a cualquier persona que busque los mejores productos tecnológicos.</p>\n");
      out.write("                                       </div>\n");
      out.write("                                    </div>\n");
      out.write("                                 </div>\n");
      out.write("                              </div>\n");
      out.write("                           </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"carousel-item\">\n");
      out.write("                           <div class=\"container\">\n");
      out.write("                              <div class=\"carousel-caption\">\n");
      out.write("                                 <div class=\"row\">\n");
      out.write("                                    <div class=\"col-md-12\">\n");
      out.write("                                       <div class=\"clients_box\">\n");
      out.write("                                          <figure><img src=\"images/Ibañez.jpg\" alt=\"#\"/></figure>\n");
      out.write("                                          <h3>David Ibañez</h3>\n");
      out.write("                                          <p>Me encanta la experiencia de compra en esta tienda de tecnología. El ambiente es moderno y atractivo, y siempre hay algo nuevo que ver. Además, la selección de productos es increíble, y siempre encuentro lo que necesito. Lo mejor de todo es que el equipo de expertos está siempre disponible para brindar asesoramiento y responder mis preguntas. ¡Siempre salgo de esta tienda con una sonrisa en mi rostro y un nuevo producto tecnológico en mis manos!</p>\n");
      out.write("                                       </div>\n");
      out.write("                                    </div>\n");
      out.write("                                 </div>\n");
      out.write("                              </div>\n");
      out.write("                           </div>\n");
      out.write("                        </div>\n");
      out.write("                     </div>\n");
      out.write("                     <a class=\"carousel-control-prev\" href=\"#myCarousel\" role=\"button\" data-slide=\"prev\">\n");
      out.write("                     <i class='fa fa-angle-left'></i>\n");
      out.write("                     </a>\n");
      out.write("                     <a class=\"carousel-control-next\" href=\"#myCarousel\" role=\"button\" data-slide=\"next\">\n");
      out.write("                     <i class='fa fa-angle-right'></i>\n");
      out.write("                     </a>\n");
      out.write("                  </div>\n");
      out.write("               </div>\n");
      out.write("            </div>\n");
      out.write("         </div>\n");
      out.write("      </div>\n");
      out.write("      <!-- end clients section -->\n");
      out.write("      <!-- contact section -->\n");
      out.write("      <div id=\"contact\" class=\"contact\">\n");
      out.write("         <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("               <div class=\"col-md-6\">\n");
      out.write("                  <form id=\"request\" class=\"main_form\">\n");
      out.write("                     <div class=\"row\">\n");
      out.write("                        <div class=\"col-md-12 \">\n");
      out.write("                           <h3>Contact Us</h3>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-md-12 \">\n");
      out.write("                           <input class=\"contactus\" placeholder=\"Nombre\" type=\"type\" name=\"Name\"> \n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-md-12\">\n");
      out.write("                           <input class=\"contactus\" placeholder=\"Numero De Celular\" type=\"type\" name=\"Phone Number\"> \n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-md-12\">\n");
      out.write("                           <input class=\"contactus\" placeholder=\"Correo\" type=\"type\" name=\"Email\">                          \n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-md-12\">\n");
      out.write("                           <input class=\"contactusmess\" placeholder=\"Mensaje\" type=\"type\" Message=\"Name\">\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-md-12\">\n");
      out.write("                           <button class=\"send_btn\">Enviar</button>\n");
      out.write("                        </div>\n");
      out.write("                     </div>\n");
      out.write("                  </form>\n");
      out.write("               </div>\n");
      out.write("            </div>\n");
      out.write("         </div>\n");
      out.write("         <div class=\"container-fluid\">\n");
      out.write("            <div class=\"map_section\">\n");
      out.write("               <div id=\"map\">\n");
      out.write("               </div>\n");
      out.write("            </div>\n");
      out.write("         </div>\n");
      out.write("      </div>\n");
      out.write("      </div>\n");
      out.write("      <!-- end contact section -->\n");
      out.write("      <!--  footer -->\n");
      out.write("      <footer>\n");
      out.write("         <div class=\"footer\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("               <div class=\"row\">\n");
      out.write("                  <div class=\"col-md-8 offset-md-2\">\n");
      out.write("                     <ul class=\"location_icon\">\n");
      out.write("                        <li><a href=\"#\"><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i></a><br>Unilago, Cra. 15 #78-33, Localidad de Chapinero, Bogotá, Cundinamarca</li>\n");
      out.write("                        <li><a href=\"#\"><i class=\"fa fa-phone\" aria-hidden=\"true\"></i></a><br> +57 3044127844</li>\n");
      out.write("                        <li><a href=\"#\"><i class=\"fa fa-envelope\" aria-hidden=\"true\"></i></a><br> technology@gmail.com</li>\n");
      out.write("                     </ul>\n");
      out.write("                  </div>\n");
      out.write("               </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"copyright\">\n");
      out.write("               <div class=\"container\">\n");
      out.write("                  <div class=\"row\">\n");
      out.write("                     <div class=\"col-md-12\">\n");
      out.write("                        <p>© 2023 Reservados Todos Los Derechos</a></p>\n");
      out.write("                     </div>\n");
      out.write("                  </div>\n");
      out.write("               </div>\n");
      out.write("            </div>\n");
      out.write("         </div>\n");
      out.write("      </footer>\n");
      out.write("      <!-- end footer -->\n");
      out.write("      <!-- Javascript files-->\n");
      out.write("      <script src=\"js/jquery.min.js\"></script>\n");
      out.write("      <script src=\"js/popper.min.js\"></script>\n");
      out.write("      <script src=\"js/bootstrap.bundle.min.js\"></script>\n");
      out.write("      <script src=\"js/jquery-3.0.0.min.js\"></script>\n");
      out.write("      <!-- sidebar -->\n");
      out.write("      <script src=\"js/jquery.mCustomScrollbar.concat.min.js\"></script>\n");
      out.write("      <script src=\"js/custom.js\"></script>\n");
      out.write("      <script>\n");
      out.write("         // This example adds a marker to indicate the position of Bondi Beach in Sydney,\n");
      out.write("         // Australia.\n");
      out.write("         function initMap() {\n");
      out.write("           var map = new google.maps.Map(document.getElementById('map'), {\n");
      out.write("             zoom: 11,\n");
      out.write("             center: {lat: 40.645037, lng: -73.880224},\n");
      out.write("             });\n");
      out.write("         \n");
      out.write("         var image = 'images/maps-and-flags.png';\n");
      out.write("         var beachMarker = new google.maps.Marker({\n");
      out.write("             position: {lat: 40.645037, lng: -73.880224},\n");
      out.write("             map: map,\n");
      out.write("             icon: image\n");
      out.write("           });\n");
      out.write("         }\n");
      out.write("      </script>\n");
      out.write("      <!-- google map js -->\n");
      out.write("      <script src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyA8eaHt9Dh5H57Zh0xVTqxVdBFCvFMqFjQ&callback=initMap\"></script>\n");
      out.write("      <!-- end google map js --> \n");
      out.write("   </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
