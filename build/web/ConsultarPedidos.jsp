<%-- 
    Document   : ConsultarPedidos
    Created on : 23/03/2023, 09:17:36 PM
    Author     : juand
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.PedidoDAO"%>
<%@page import="ModeloVO.PedidoVO"%>
<%@include file="Sesiones.jsp" %>
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
     <title>Consultar Producto</title>
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
       <link href="css/tables.css" rel="stylesheet" type="text/css"/>
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
        <h1 align="center"> Pedidos</h1>
        <form align="center" method = "post" action="PedidoControlador" class="needs-validation" novalidate>
            <table align="center">
                <tr>
                    <th  align="center">
                        <div class="form-group" >
                        <div class="form-floating mb-3">
                            <input type="number"  name="PedId" class="form-control" id="floatingInput" placeholder="name@example.com" required>
                            <label for="floatingInput">ID</label>
                             <div class="invalid-feedback">
                                Ingrese un Id
                            </div>
                        </div>
                      
                        <div class="button">
                        <input type="submit" value= "Consultar" >

                        </div>
                          </div>
                   
                    </th>
                </tr>
  
            </table> <br>
            <input type="hidden" name="opcion" value="3">
        </form>
                <form>
            <table align="center" border="1" class="table table-striped">
                <tr>
                    <th>ID</th>
                    <th>CEDULA DEL CLIENTE</th>
                    <th>FECHA</th>
                    <th>DESCRIPCION</th>
                    <th>METODO DE PAGO</th>
                    <th>ESTADO</th>
                </tr>
                <%
                    PedidoVO peVO = new PedidoVO();
                    PedidoDAO peDAO = new PedidoDAO(peVO);

                    ArrayList<PedidoVO> lista = peDAO.listar();
                    for (int i = 0; i < lista.size(); i++) {
                        peVO = lista.get(i);
                %>
                <tr>   
                    <td><%=peVO.getPedId()%></td>
                    <td><%=peVO.getPedUsuCedula()%></td>
                    <td><%=peVO.getPedFecha()%></td>
                    <td><%=peVO.getPedDescripcion() %></td>
                    <td><%=peVO.getPedMetodoPago()%></td>
                    <td><%=peVO.getPedEstado()%></td>
                    
                </tr>
                <%}%>
            </table>
        </form> 

    </center>

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
