/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloVO;

/**
 *
 * @author juand
 */
public class DetallePedidoVO 
{
    private String DetId, DetPrecio, DetCantidad, DetPrecioTotal, DetPedido, DetProId;

    public DetallePedidoVO() {
    }

    public DetallePedidoVO(String DetId, String DetPrecio, String DetCantidad, String DetPrecioTotal, String DetPedido, String DetProId) {
        this.DetId = DetId;
        this.DetPrecio = DetPrecio;
        this.DetCantidad = DetCantidad;
        this.DetPrecioTotal = DetPrecioTotal;
        this.DetPedido = DetPedido;
        this.DetProId = DetProId;
    }

    public String getDetId() {
        return DetId;
    }

    public void setDetId(String DetId) {
        this.DetId = DetId;
    }

    public String getDetPrecio() {
        return DetPrecio;
    }

    public void setDetPrecio(String DetPrecio) {
        this.DetPrecio = DetPrecio;
    }

    public String getDetCantidad() {
        return DetCantidad;
    }

    public void setDetCantidad(String DetCantidad) {
        this.DetCantidad = DetCantidad;
    }

    public String getDetPrecioTotal() {
        return DetPrecioTotal;
    }

    public void setDetPrecioTotal(String DetPrecioTotal) {
        this.DetPrecioTotal = DetPrecioTotal;
    }

    public String getDetPedido() {
        return DetPedido;
    }

    public void setDetPedido(String DetPedido) {
        this.DetPedido = DetPedido;
    }

    public String getDetProId() {
        return DetProId;
    }

    public void setDetProId(String DetProId) {
        this.DetProId = DetProId;
    }

}
