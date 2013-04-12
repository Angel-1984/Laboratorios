class DevolucionesController < ApplicationController

  def index
    
  end

  def devolucion
    @prestamos = Prestamo.where("num_control = ? and devuelto = false",params[:num_control])
  end

  def estado_devolucion
    @prestamos = []
    params.each{ |key,value|
      if key[0,8] == "prestamo"
        @prestamos << value.to_i
      end
    }
    @devolucion = Devolucion.new
  end

  def create
    error = false
    @prestamos = params[:prestamos_ids].split(" ")
    for prestamo_id in @prestamos
      prestamo = Prestamo.find_by_id(prestamo_id)
      devolucion = Devolucion.new
      devolucion.prestamo_id = prestamo_id
      devolucion.fecha_entrega = DateTime.now
      devolucion.nuevo = false
      devolucion.usado = false
      devolucion.danado = false
      devolucion.dano = ""
      if params["estado_#{prestamo_id}"] == "nuevo"
        devolucion.nuevo = true
      elsif params["estado_#{prestamo_id}"] == "usado"
        devolucion.usado = true
      else
        devolucion.danado = true
        devolucion.dano = params["dano_#{prestamo_id}"]
      end
      devolucion.observaciones = params["observaciones_#{prestamo_id}"]
      if !devolucion.save
        error = true
        @devolucion = devolucion
        break
      end
      material = prestamo.material
      material.nuevo = devolucion.nuevo
      material.usado = devolucion.usado
      material.danado = devolucion.danado
      material.dano = devolucion.dano
      material.disponible = true
      material.save
      prestamo.update_attribute(:devuelto, true)
    end
    
    respond_to do |format|
      if !error
        format.html { redirect_to devoluciones_url, notice: 'La Devolucion se realizo con exito.' }
      else
        format.html { render action: "/estado_devolucion" }
      end
    end
  end
end
