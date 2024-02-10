/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloVO;

/**
 *
 * @author SONY
 */
public class PedidoVO 
{
        private String pedId, pedFecha, pedDescripcion, pedMetodoPago, pedEstado, pedUsuCedula;

    public PedidoVO() {
    }

    public PedidoVO(String pedId, String pedFecha, String pedDescripcion, String pedMetodoPago, String pedEstado, String pedUsuCedula) {
        this.pedId = pedId;
        this.pedFecha = pedFecha;
        this.pedDescripcion = pedDescripcion;
        this.pedMetodoPago = pedMetodoPago;
        this.pedEstado = pedEstado;
        this.pedUsuCedula = pedUsuCedula;
    }

    public String getPedId() {
        return pedId;
    }

    public void setPedId(String pedId) {
        this.pedId = pedId;
    }

    public String getPedFecha() {
        return pedFecha;
    }

    public void setPedFecha(String pedFecha) {
        this.pedFecha = pedFecha;
    }

    public String getPedDescripcion() {
        return pedDescripcion;
    }

    public void setPedDescripcion(String pedDescripcion) {
        this.pedDescripcion = pedDescripcion;
    }

    public String getPedMetodoPago() {
        return pedMetodoPago;
    }

    public void setPedMetodoPago(String pedMetodoPago) {
        this.pedMetodoPago = pedMetodoPago;
    }

    public String getPedEstado() {
        return pedEstado;
    }

    public void setPedEstado(String pedEstado) {
        this.pedEstado = pedEstado;
    }

    public String getPedUsuCedula() {
        return pedUsuCedula;
    }

    public void setPedUsuCedula(String pedUsuCedula) {
        this.pedUsuCedula = pedUsuCedula;
    }

    

    
        
}
