/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.ProductoVO;
import java.sql.CallableStatement;
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
 * @author APRENDIZ
 */
public class ProductoDAO extends ConexionBd implements Crud
{
    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;
    
    private boolean operacion = false;
    private String sql;
    
    private String  proId = "",proModelo = "", proDescripcion = "", proNombre = "",proCategoria = "",proEstado = "", proImagen="",proCantidad="", proPrecioVenta="";
    public ProductoDAO() {
    }

     public ProductoDAO(ProductoVO proVO)
     {
        super();
        try 
        {
            // Conectarse a la base de datos
            conexion = this.obtenerConexion();
            // Trae los datos del VO al DAO
            proId=proVO.getProId();
            proModelo = proVO.getProModelo();
            proDescripcion = proVO.getProDescripcion();
            proNombre = proVO.getProNombre();
            proPrecioVenta = proVO.getProPrecioVenta();
            proCantidad = proVO.getProCantidad();
            proCategoria = proVO.getProCategoria();
            proEstado = proVO.getProEstado();
            proImagen =proVO.getProImagen();
        } 
        catch (Exception e) 
        {
          Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE,null,e); 
        }
    }
     
    @Override
    public boolean agregarRegistro() 
    {
        try 
        {
            sql="INSERT INTO tblproducto (ProId, ProModelo, ProDescripcion, ProNombre, ProPrecioVenta, ProCantidad, ProCat, ProImagen) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, proId);
            puente.setString(2, proModelo);
            puente.setString(3, proDescripcion);
            puente.setString(4, proNombre);
            puente.setString(5, proPrecioVenta);
            puente.setString(6, proCantidad);
            puente.setString(7, proCategoria);
            puente.setString(8, proImagen);
            puente.executeUpdate();
            operacion = true;
        }
        catch (Exception e)
        {
            Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE,null,e);
        } 
        finally
        {
            try 
            {
                this.cerrarConexion();
            }
            catch (Exception e) 
            {
                Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE,null,e);
            }
        }
        return operacion;
    }

    @Override
    public boolean actualizarRegistro()
    {
       try
       {
            sql="UPDATE tblProducto SET ProModelo = ?, ProDescripcion = ?, ProNombre = ?, ProPrecioVenta = ?, ProCantidad = ?, ProImagen = ?, ProCat = ? WHERE ProId = ?;";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, proModelo);
            puente.setString(2, proDescripcion);
            puente.setString(3, proNombre);
            puente.setString(4, proPrecioVenta);
            puente.setString(5, proCantidad);            
            puente.setString(6, proImagen);
            puente.setString(7, proCategoria);
            puente.setString(8, proId);
            puente.executeUpdate();
            operacion = true;
            
        } catch (Exception e) {
            Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE,null,e);

        } finally{
            try {
                 this.cerrarConexion();
            } catch (Exception e) {
                Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE,null,e);
            }
        }
        return operacion;
    }
   
    public boolean eliminarRegistro() 
    {
        try 
         {
            conexion = this.obtenerConexion();
            sql = "UPDATE tblproducto SET ProEstado = 'Inactivo' WHERE ProId = ?;";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, proId);
            puente.executeUpdate();
         }
        catch (Exception e) 
        {
            Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE,null,e);
        } finally{
            try {
                 this.cerrarConexion();
            } catch (Exception e) {
                Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE,null,e);
            }
        }
        return operacion;
    }
    
     public ProductoVO consultarPorId(String ProId){
        ProductoVO proVO = null;
        
        try {
            conexion = this.obtenerConexion();
            sql= "select * from tblproducto where ProId = ?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1,ProId);
            mensajero=puente.executeQuery();
            while(mensajero.next())
            {
             proVO = new ProductoVO(ProId, mensajero.getString(2),mensajero.getString(3), mensajero.getString(4), 
                        mensajero.getString(5), mensajero.getString(6), mensajero.getString(7), mensajero.getString(8),mensajero.getString(9));
            }       

        } catch (Exception e) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE,null,e);
        }finally{
            try {
                this.cerrarConexion();
            } catch (Exception e) {
                Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE,null,e);
            }
        }
        return proVO;
    }
    public ArrayList<ProductoVO> listar(){
        
        ArrayList<ProductoVO> lista = new ArrayList<>();
            
        try {
            conexion = this.obtenerConexion();
            sql= "select * from tblproducto";
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();
            while(mensajero.next())
            {
             ProductoVO usuVO= new ProductoVO(mensajero.getString(1), mensajero.getString(2),mensajero.getString(3), mensajero.getString(4), 
                        mensajero.getString(8), mensajero.getString(9), mensajero.getString(7),mensajero.getString(6) ,mensajero.getString(5));
            lista.add(usuVO);
           }
        } catch (Exception e) {
            Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE,null,e);
        }finally{
            try {
                this.cerrarConexion();
            } catch (Exception e) {
                Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE,null,e);
            }
        }
        return lista;
    }
    
    public boolean reactivarRegistro() 
    {    
         try 
         {
             ProductoVO proVO= new ProductoVO();
            conexion = this.obtenerConexion();
            sql = "UPDATE tblproducto SET ProEstado = 'Activo' WHERE ProId = ?;";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, proId);
            puente.executeUpdate();
         }
        catch (Exception e) 
        {
            Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE,null,e);
        } finally{
            try {
                 this.cerrarConexion();
            } catch (Exception e) {
                Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE,null,e);
            }
        }
        return operacion;
    }
     public ProductoVO obtenerProducto(int id){
        
         ProductoVO proVO=null;
        try {
            CallableStatement cl =conexion.prepareCall("{call sp_ProductoCod(?)}");
            cl.setInt(1, id);
            mensajero= cl.executeQuery();
            while(mensajero.next())
            {
                proVO=new ProductoVO(mensajero.getString(1), mensajero.getString(2),mensajero.getString(3), mensajero.getString(4), 
                        mensajero.getString(8), mensajero.getString(9), mensajero.getString(7),mensajero.getString(6) ,mensajero.getString(5));
            }
        } catch (Exception e) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE,null,e);
        }finally{
            try {
                this.cerrarConexion();
            } catch (Exception e) {
                Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE,null,e);
            }
        }
        return proVO;
     }
   
}
