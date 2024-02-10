/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DetallePedidoControlador;

import ModeloDAO.DetallePedidoDAO;
import ModeloDAO.PedidoDAO;
import ModeloVO.DetallePedidoVO;
import ModeloVO.PedidoVO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author juand
 */
@WebServlet(name = "DetallePedidoControlador", urlPatterns = {"/DetallePedidoControlador"})
public class DetallePedidoControlador extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            response.setContentType("text/html;charset=UTF-8");
        //1.recibir datos vistas 
        String DetId = request.getParameter("DetId");
        String DetPrecio = request.getParameter("DetPrecio");
        String DetCantidad = request.getParameter("DetCantidad");
        String DetPrecioTotal = request.getParameter("DetPrecioTotal");
        String DetPedido = request.getParameter("DetPedido");
        String DetProId = request.getParameter("DetProId");
        int opcion = Integer.parseInt(request.getParameter("opcion"));
        
        DetallePedidoVO detpeVO = new DetallePedidoVO(DetId, DetPrecio, DetPrecio, DetProId, DetId, DetPedido);
 
        DetallePedidoDAO depeDAO = new DetallePedidoDAO(detpeVO);

        
        switch(opcion)
        {
            case 1:
                if(depeDAO.agregarRegistro())
                {
                    request.setAttribute("mensajeExito", "Detalle Del Pedido registrado correctamente");
                    request.getRequestDispatcher("ConsultarProductoPedido.jsp").forward(request, response);
                }
                else
                {
                    request.setAttribute("mensajeError", "Detalle Del Pedido no registrado correctamente");
                }
                request.getRequestDispatcher("RealizarPedido.jsp").forward(request, response);
            break;
        }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
