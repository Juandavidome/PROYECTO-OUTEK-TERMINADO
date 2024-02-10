/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.DetallePedidoVO;
import ModeloVO.PedidoVO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;
import java.util.logging.Logger;
import util.ConexionBd;

/**
 *
 * @author juand
 */
public class DetallePedidoDAO extends ConexionBd
{
     private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;
    
    private boolean operacion = false;
    private String sql;
    
    private String DetId="", DetPrecio="", DetCantidad="", DetPrecioTotal="", DetIdPedido="", DetProId="";
     public DetallePedidoDAO() {
    }
     public DetallePedidoDAO(DetallePedidoVO DePeVO)
     {
        super();
        try 
        {
            // Conectarse a la base de datos
            conexion = this.obtenerConexion();
            // Trae los datos del VO al DAO
            DetId = DePeVO.getDetId();
            DetPrecio = DePeVO.getDetPrecio();
            DetCantidad = DePeVO.getDetCantidad();
            DetPrecioTotal = DePeVO.getDetPrecioTotal();
            DetIdPedido= DePeVO.getDetPedido();
            DetProId= DePeVO.getDetProId();
        } 
        catch (Exception e) 
        {
          Logger.getLogger(PedidoDAO.class.getName()).log(Level.SEVERE,null,e); 
        }
    }
    public boolean agregarRegistro() 
    {
        try 
        {
            sql="INSERT INTO tblDetallepedido (DetId, DetPrecio, DetCantidad, DetPrecioTotal, tblpedido_PedId, tblproducto_ProId) VALUES (?, ?, ?, ?, ?, ?);";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, DetId);
            puente.setString(2, DetPrecio);
            puente.setString(3, DetCantidad);
            puente.setString(4, DetPrecioTotal);
            puente.setString(5, DetIdPedido);
            puente.setString(6, DetProId);
            puente.executeUpdate();
            operacion = true;
        }
        catch (Exception e)
        {
            Logger.getLogger(PedidoDAO.class.getName()).log(Level.SEVERE,null,e);
        } 
        finally
        {
            try 
            {
                this.cerrarConexion();
            }
            catch (Exception e) 
            {
                Logger.getLogger(PedidoDAO.class.getName()).log(Level.SEVERE,null,e);
            }
        }
        return operacion;
    }
    
}
