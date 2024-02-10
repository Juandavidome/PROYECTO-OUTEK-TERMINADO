package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;
import ModeloDAO.ProductoDAO;
import ModeloVO.ProductoVO;

public final class ConsultarProducto_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("         <head>\n");
      out.write("            <link rel=\"shortcut icon\" href=\"images/Logo..png\">\n");
      out.write("    <!-- basic -->\n");
      out.write("      <meta charset=\"utf-8\">\n");
      out.write("      <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("      <!-- mobile metas -->\n");
      out.write("      <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("      <meta name=\"viewport\" content=\"initial-scale=1, maximum-scale=1\">\n");
      out.write("      <!-- site metas --> \n");
      out.write("     <title>Consultar Producto</title>\n");
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
      out.write("       <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp\" crossorigin=\"anonymous\">\n");
      out.write("       <link href=\"css/tables.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("         </head>\n");
      out.write("<body class=\"main-layout\">\n");
      out.write("      <!-- loader  -->\n");
      out.write("      <div class=\"loader_bg\">\n");
      out.write("         <div class=\"loader\"><img src=\"images/loading.gif\" alt=\"#\" /></div>\n");
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
      out.write("                               <li class=\"nav-item active\">\n");
      out.write("                                 <a class=\"nav-link\" href=\"PersonalDeVentas.jsp\">Inicio</a>\n");
      out.write("                                </li>\n");
      out.write("                                <li class=\"nav-item active\">\n");
      out.write("                                 <a class=\"nav-link\" href=\"RegistrarProducto.jsp\">Registrar Producto</a>\n");
      out.write("                                </li>\n");
      out.write("                           \n");
      out.write("                           </ul>\n");
      out.write("                        </div>\n");
      out.write("                     </nav>\n");
      out.write("                  </div>\n");
      out.write("               </div>\n");
      out.write("            </div>\n");
      out.write("         </div>\n");
      out.write("      </header>\n");
      out.write("           <!-- end footer -->\n");
      out.write("      <!-- Javascript files-->\n");
      out.write("      <script src=\"js/jquery.min.js\"></script>\n");
      out.write("      <script src=\"js/popper.min.js\"></script>\n");
      out.write("      <script src=\"js/bootstrap.bundle.min.js\"></script>\n");
      out.write("      <script src=\"js/jquery-3.0.0.min.js\"></script>\n");
      out.write("      <!-- sidebar -->\n");
      out.write("      <script src=\"js/jquery.mCustomScrollbar.concat.min.js\"></script>\n");
      out.write("      <script src=\"js/custom.js\"></script>\n");
      out.write("      <br>\n");
      out.write("      <br>\n");
      out.write("      <br>\n");
      out.write("      <br>\n");
      out.write("      <br>\n");
      out.write("      <br>\n");
      out.write("      <br>\n");
      out.write("      <br>\n");
      out.write("      <br>\n");
      out.write("      <br>\n");
      out.write("    <center>\n");
      out.write("        <h1>Productos</h1>\n");
      out.write("        <center>\n");
      out.write("        <form align=\"center\" method = \"post\" action=\"ProductoControlador\" class=\"needs-validation\" novalidate>\n");
      out.write("            <table align=\"center\">\n");
      out.write("                <tr>\n");
      out.write("                    <th  align=\"center\">\n");
      out.write("                        <div class=\"form-group\" >\n");
      out.write("                        <div class=\"form-floating mb-3\">\n");
      out.write("                            <input type=\"number\"  name=\"proId\" class=\"form-control\" id=\"floatingInput\" placeholder=\"name@example.com\" required>\n");
      out.write("                            <label for=\"floatingInput\">ID</label>\n");
      out.write("                             <div class=\"invalid-feedback\">\n");
      out.write("                                Ingrese un Id\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                      \n");
      out.write("                        <div class=\"button\">\n");
      out.write("                        <input type=\"submit\" value= \"Consultar\" >\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                          </div>\n");
      out.write("                   \n");
      out.write("                    </th>\n");
      out.write("                </tr>\n");
      out.write("            </table> <br>\n");
      out.write("            <input type=\"hidden\" name=\"opcion\" value=\"3\">\n");
      out.write("        </form>\n");
      out.write("            </center>\n");
      out.write("        <form>\n");
      out.write("            <table align=\"center\" border=\"1\"class=\"table table-striped\">\n");
      out.write("                <tr>\n");
      out.write("                    <th>ID</th>\n");
      out.write("                    <th>MODELO</th>\n");
      out.write("                    <th>DESCRIPCION</th>\n");
      out.write("                    <th>NOMBRE</th>\n");
      out.write("                    <th>PRECIO</th>\n");
      out.write("                    <th>CANTIDAD</th>\n");
      out.write("                    <th>ESTADO</th>\n");
      out.write("                    <th>CATEGORIA</th>\n");
      out.write("                    <th>IMAGEN</th>\n");
      out.write("                </tr>\n");
      out.write("                ");

                    ProductoVO proVO = new ProductoVO();
                    ProductoDAO proDAO = new ProductoDAO(proVO);

                    ArrayList<ProductoVO> lista = proDAO.listar();
                    for (int i = 0; i < lista.size(); i++) {
                        proVO = lista.get(i);
                
      out.write("\n");
      out.write("                <tr >    \n");
      out.write("                    <td>");
      out.print(proVO.getProId());
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(proVO.getProModelo());
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(proVO.getProDescripcion());
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(proVO.getProNombre());
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(proVO.getProPrecioVenta());
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(proVO.getProCantidad());
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(proVO.getProCategoria());
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(proVO.getProEstado());
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(proVO.getProImagen());
      out.write("</td>\n");
      out.write("                    <td>\n");
      out.write("                        <form method = \"post\" action=\"ProductoControlador\">\n");
      out.write("                         \n");
      out.write("                            <input type=\"submit\" value=\"Inactivar Usuario\" class=\"btn btn-outline-dark\">\n");
      out.write("                            <input type=\"hidden\" name=\"proId\" value=\"");
      out.print(proVO.getProId());
      out.write("\">\n");
      out.write("                            <input type=\"hidden\" name=\"opcion\" value=\"4\">\n");
      out.write("                       \n");
      out.write("                        </form>\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        <form method = \"post\" action=\"ProductoControlador\">\n");
      out.write("                           \n");
      out.write("                            <input type=\"submit\" value=\"Reactivar Usuario\" class=\"btn btn-outline-dark\">\n");
      out.write("                            <input type=\"hidden\" name=\"proId\" value=\"");
      out.print(proVO.getProId());
      out.write("\">\n");
      out.write("                            <input type=\"hidden\" name=\"opcion\" value=\"5\">\n");
      out.write("                          \n");
      out.write("                        </form>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                ");
}
      out.write("\n");
      out.write("            </table>\n");
      out.write("             ");

                if (request.getAttribute("mensajeError") != null) {
      out.write("\n");
      out.write("    ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${mensajeError}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\n");
      out.write("    ");
} else {
      out.write("\n");
      out.write("    ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${mensajeExito}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\n");
      out.write("    ");
}
      out.write("\n");
      out.write("    \n");
      out.write("        </form> \n");
      out.write("    </center>\n");
      out.write("\n");
      out.write("   \n");
      out.write("    \n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N\" crossorigin=\"anonymous\"></script>\n");
      out.write("<script>\n");
      out.write("            // Example starter JavaScript for disabling form submissions if there are invalid fields\n");
      out.write("(() => {\n");
      out.write("  'use strict'\n");
      out.write("\n");
      out.write("  // Fetch all the forms we want to apply custom Bootstrap validation styles to\n");
      out.write("  const forms = document.querySelectorAll('.needs-validation')\n");
      out.write("\n");
      out.write("  // Loop over them and prevent submission\n");
      out.write("  Array.from(forms).forEach(form => {\n");
      out.write("    form.addEventListener('submit', event => {\n");
      out.write("      if (!form.checkValidity()) {\n");
      out.write("        event.preventDefault()\n");
      out.write("        event.stopPropagation()\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      form.classList.add('was-validated')\n");
      out.write("    }, false)\n");
      out.write("  })\n");
      out.write("})()\n");
      out.write("        </script>\n");
      out.write("</body>\n");
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
