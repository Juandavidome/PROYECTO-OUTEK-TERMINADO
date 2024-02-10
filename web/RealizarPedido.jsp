<%-- 
    Document   : RealizarPedido
    Created on : 23/03/2023, 03:57:06 PM
    Author     : SONY
--%>

<%@page import="ModeloVO.MetodoPagoVO"%>
<%@page import="ModeloDAO.MetodoPagoDAO"%>
<%@page import="ModeloVO.PedidoVO"%>
<%@page import="ModeloDAO.PedidoDAO"%>
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
      
        <script>
        function copyId() {
          var id = document.getElementById("random-number");
          var text = id.innerText;
          var input = document.createElement("input");
          input.value = text;
          document.body.appendChild(input);
          input.select();
          input.setSelectionRange(0, 99999);
          document.execCommand("copy");
          input.remove();
          alert("ID copiado al portapapeles: " + text);
        }
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
        <%
            UsuarioVO usuVO = (UsuarioVO) request.getAttribute("¡Cliente encontrado!");
            if (usuVO != null) {

        %>
        <section class="form-register">
            <form align="center" method="post" action="PedidoControlador">
            <h1 align="center">Llenar Datos Personales Para El Pedido</h1>

            <p>SU NUMERO DE ID ES: <span id="random-number"></span></p>
            <input type="hidden" name="PedId" id="PedId" value="">
            <p>Por favor copiar por si se le olvida. Lo necesitara mas adelante.</p>
            <button type="button" class="btn btn-primary" onclick="copyId()">Copiar</button>


            <p>FECHA: <span id="fecha-actual"></span></p>
            <input type="hidden" name="PedFecha" id="PedFecha" value="">

            <label>Cedula</label>
            <input type="text" name="UsuCedula"value="<%=usuVO.getUsuCedula()%>" readonly onmousedown="return false;"><br>
            <br>

            <label>Descripcion</label>
            <input type="text" name="PedDescripcion"><br>
            <br>

            <label>Metodo De Pago</label>
            <select name="PedMetodoPago">
              <option>Seleccione...</option>
              <% MetodoPagoDAO metDAO = new MetodoPagoDAO();
              for (MetodoPagoVO getVO : metDAO.listar()) {%>
              <option value="<%=getVO.getMetId()%>"><%=getVO.getMetTipo()%></option>
              <%}%>
            </select>
            <br>
            <input class="botons" type="submit" value="Registrar Pedido">
            <input type="hidden" name="opcion" value="1">   
          </form>
            <%}%>

            <%
                     if (request.getAttribute("mensajeError") != null) {%>
            ${mensajeError}

            <%} else {%>
            ${mensajeExito}
            <%}%>
        </section>
    </body>
</html>
