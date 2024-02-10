<%-- 
    Document   : RealizarDetallePedido
    Created on : 24/03/2023, 08:28:51 AM
    Author     : juand
--%>

<%@page import="ModeloVO.PedidoVO"%>
<%@page import="ModeloVO.ProductoVO"%>
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
        <%
            ProductoVO proVO = (ProductoVO) request.getAttribute("¡El producto encontrado!");
            if (proVO != null) {
              
        %>
        <section class="form-register">
            <form align="center" method="post" action="DetallePedidoControlador">
                <h4 align="center">Realizar Pedido</h4>
                
               <label>POR FAVOR INGRESAR ID ANTERIOR</label>
                <input type="number" name="DetId" oninput="copiar()" id="DeId"><br>
                
                <label>PRECIO</label>
                <input type="text" name="DetPrecio" value="<%=proVO.getProPrecioVenta()%>" oninput="multiplicar()" readonly onmousedown="return false;"><br>

                <label>CANTIDAD</label>
                <input type="number" name="DetCantidad" id="input2" oninput="multiplicar()" max="<%=proVO.getProEstado()%>" min="1" maxlength="3">
                <label> EN STOCK: <%=proVO.getProEstado()%></label>

                 <script>
                    function multiplicar() {
                        // Obtener los valores de los inputs
                        var valor1 = document.getElementsByName("DetPrecio")[0].value;
                        var valor2 = document.getElementById("input2").value;

                        // Multiplicar los valores
                        var resultado = valor1 * valor2;

                        // Mostrar el resultado
                        document.getElementById("resultado").innerHTML = resultado;
                      }
                    function copiar() {
                    // Obtener el valor ingresado en DetId
                    var valor = document.getElementById("DeId").value;

                    // Copiar el valor en el input de ID PEDIDO
                    document.getElementById("idPedido").value = valor;
                }
                </script>
                <p>EL VALOR TOTAL ES: <span id="resultado" value="resultado"></span></p>
                <input type="hidden" name="DetPrecioTotal" id="resultado">
                
                <label>PRODUCTO</label>
                <input type="text" value="<%=proVO.getProId()%>" name="DetProId" readonly onmousedown="return false;"><br>
                
                <label>ID PEDIDO</label>
                <input type="text" id="idPedido" name="DetPedido" readonly onmousedown="return false;" /><br>
                
                <br>
                <input class="botons" type="submit" value="Registrar Detalle">
                <input type="hidden" name="opcion" value=1>   
            </form>
        </section>
        <%}%>
        <%
                if (request.getAttribute("mensajeError") != null) {%>
        ${mensajeError}
        <%} else {%>
        ${mensajeExito}
        <%}%>
    </body>
</html>
