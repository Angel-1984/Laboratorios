class DevolucionesController < ApplicationController

  def index
    
  end

  def devolucion
    @prestamos = Prestamo.where("num_control = ? and devuelto = false",params[:num_control])
  end

  def estado_devolucion
    @prestamo = Prestamo.find_by_id(params[:id])
    @devolucion = Devolucion.new
  end

  def create
    @devolucion = Devolucion.new(params[:devolucion])
    @devolucion.fecha_entrega = DateTime.now
    prestamo = Prestamo.find_by_id(params[:prestamo_id])
    material = prestamo.material
    material.nuevo = @devolucion.nuevo
    material.usado = @devolucion.usado
    material.danado = @devolucion.danado
    material.dano = @devolucion.dano
    material.disponible = true
    material.save
    prestamo.update_attribute(:devuelto, true)
    respond_to do |format|
      if @devolucion.save
        format.html { redirect_to devoluciones_url, notice: 'La Devolucion se realizo con exito.' }
      else
        format.html { render action: "/estado_devolucion#{prestamo.id}" }
      end
    end
  end
end
