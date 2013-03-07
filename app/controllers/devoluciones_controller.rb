class DevolucionesController < ApplicationController

  def index
    
  end

  def devolucion
    @prestamos = Prestamo.where("num_control = ?",params[:num_control])
  end

  def devolver
    @prestamo = Prestamo.find_by_id(params[:id])
    material = @prestamo.material
    material.update_attribute(:disponible, true)
    respond_to do |format|
      @prestamos = Prestamo.where("num_control = ?",params[:num_control])
      format.html { render 'devolucion', notice: 'La devolucion se realizo con exito.' }
    end
  end
end
