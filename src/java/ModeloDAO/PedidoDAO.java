/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.PedidoVO;
import ModeloVO.ProductoVO;
import ModeloVO.RolVO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import util.ConexionBd;
import util.Crud;

/**
 *
 * @author SONY
 */
public class PedidoDAO extends ConexionBd
{
     private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;
    
    private boolean operacion = false;
    private String sql;
    
    private String pedId="", pedFecha="", pedDescripcion="", pedMetodoPago="", pedEstado="", pedUsuCedula="";
     public PedidoDAO() {
    }
     public PedidoDAO(PedidoVO peVO)
     {
        super();
        try 
        {
            // Conectarse a la base de datos
            conexion = this.obtenerConexion();
            // Trae los datos del VO al DAO
            pedId = peVO.getPedId();
            pedFecha = peVO.getPedFecha();
            pedDescripcion = peVO.getPedDescripcion();
            pedMetodoPago = peVO.getPedMetodoPago();
            pedEstado= peVO.getPedEstado();
            pedUsuCedula= peVO.getPedUsuCedula();
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
            sql="INSERT INTO tblpedido (PedId, PedFecha, PedDescripcion, PedMetodo, tblusuario_UsuCedula) VALUES (?, ?, ?, ?, ?);";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, pedId);
            puente.setString(2, pedFecha);
            puente.setString(3, pedDescripcion);
            puente.setString(4, pedMetodoPago);
            puente.setString(5, pedUsuCedula);
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
    public boolean actualizarRegistro()
    {
       try
       {
            sql="UPDATE tblpedido SET PedFecha = ?, PedDescripcion = ?,PedMetodoPago = ?,PedEstado = ?, tblusuario_UsuCedula = ? WHERE PedId = ?;";
            puente = conexion.prepareStatement(sql);
            puente.setString(6, pedId);
            puente.setString(1, pedFecha);
            puente.setString(2, pedDescripcion);
            puente.setString(3, pedMetodoPago);
            puente.setString(4, pedEstado);            
            puente.setString(5, pedUsuCedula);
            puente.executeUpdate();
            operacion = true;
            
        } catch (Exception e) {
            Logger.getLogger(PedidoDAO.class.getName()).log(Level.SEVERE,null,e);

        } finally{
            try {
                 this.cerrarConexion();
            } catch (Exception e) {
                Logger.getLogger(PedidoDAO.class.getName()).log(Level.SEVERE,null,e);
            }
        }
        return operacion;
    }
    public ArrayList<PedidoVO> listar(){
        
        ArrayList<PedidoVO> lista = new ArrayList<>();
            
        try {
            conexion = this.obtenerConexion();
            sql= "select * from tblpedido";
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();
            while(mensajero.next())
            {
             PedidoVO peVO= new PedidoVO(mensajero.getString(1), mensajero.getString(2),mensajero.getString(3), mensajero.getString(4),mensajero.getString(5),mensajero.getString(6));
            lista.add(peVO);
           }
        } catch (Exception e) {
            Logger.getLogger(PedidoDAO.class.getName()).log(Level.SEVERE,null,e);
        }finally{
            try {
                this.cerrarConexion();
            } catch (Exception e) {
                Logger.getLogger(PedidoDAO.class.getName()).log(Level.SEVERE,null,e);
            }
        }
        return lista;
    }
    public PedidoVO consultarPorIdPedido(String PeId){
        PedidoVO peVO = null;
        
        try {
            conexion = this.obtenerConexion();
            sql= "select * from tblpedido where PedId = ?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1,PeId);
            mensajero=puente.executeQuery();
            while(mensajero.next())
            {
             peVO = new PedidoVO(PeId, mensajero.getString(2),mensajero.getString(3), mensajero.getString(4), 
                        mensajero.getString(5), mensajero.getString(6));
            }       

        } catch (Exception e) {
            Logger.getLogger(PedidoDAO.class.getName()).log(Level.SEVERE,null,e);
        }finally{
            try {
                this.cerrarConexion();
            } catch (Exception e) {
                Logger.getLogger(PedidoDAO.class.getName()).log(Level.SEVERE,null,e);
            }
        }
        return peVO;
    }
    
    
       public boolean eliminarRegistro() 
    {
        try 
         {
            conexion = this.obtenerConexion();
            sql = "UPDATE tblpedido SET PedEstado = 'Inactivo' WHERE PedId = ?;";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, pedId);
            puente.executeUpdate();
         }
        catch (Exception e) 
        {
            Logger.getLogger(PedidoDAO.class.getName()).log(Level.SEVERE,null,e);
        } finally{
            try {
                 this.cerrarConexion();
            } catch (Exception e) {
                Logger.getLogger(PedidoDAO.class.getName()).log(Level.SEVERE,null,e);
            }
        }
        return operacion;
    }
       
       
         public boolean reactivarRegistro() 
    {    
         try 
         {
            conexion = this.obtenerConexion();
            sql = "UPDATE tblpedido SET ProEstado = 'Activo' WHERE PedId = ?;";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, pedId);
            puente.executeUpdate();
         }
        catch (Exception e) 
        {
            Logger.getLogger(PedidoDAO.class.getName()).log(Level.SEVERE,null,e);
        } finally{
            try {
                 this.cerrarConexion();
            } catch (Exception e) {
                Logger.getLogger(PedidoDAO.class.getName()).log(Level.SEVERE,null,e);
            }
        }
        return operacion;
    }
}
