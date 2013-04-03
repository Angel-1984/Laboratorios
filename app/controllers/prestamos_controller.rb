class PrestamosController < ApplicationController
  def index
    @materiales = Material.all
  end

  def prestar
    @material = Material.find_by_id(params[:id])
    if @material.disponible
      @prestamo = Prestamo.new
    else
      respond_to do |format|
        flash[:error] = "El material no esta disponible."
        format.html { redirect_to prestamos_url }
      end
    end
  end

  def create
    @prestamo = Prestamo.new(params[:prestamo])
    material = Material.find_by_id(@prestamo.material_id)
    material.update_attribute(:disponible, false)
    respond_to do |format|
      if @prestamo.save
        format.html { redirect_to prestamos_url, notice: 'El prestamo se realizo con exito.' }
      else
        format.html { render action: "/prestar#{@prestamo.material_id}" }
      end
    end
  end
end
