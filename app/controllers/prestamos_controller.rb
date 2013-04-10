class PrestamosController < ApplicationController
  def index
    @materiales = Material.all
  end

  def prestar
    
  end

  def agregar_carrito
    @material_cart = Material.find_by_id(params[:id])
    if !@material_cart.disponible
      flash.now[:error] = "El material no esta disponible."
      #@prestamo = Prestamo.new
    else
      respond_to do |format|
        format.js { render :layout => false }
        #format.html { redirect_to prestamos_url }
      end
    end
  end

  def devolver_carrito
    @material_cart = Material.find_by_id(params[:id])
    respond_to do |format|
      format.js { render :layout => false }
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
