class PrestamosController < ApplicationController
  def index
    @materiales = Material.all
  end

  def prestar
    @prestamo = Prestamo.new
    @materiales = []
    params.each{ |key,value|
      if key[0,8] == "material"
        @materiales << value.to_i
      end
    }
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
    error = false
    @materiales = params[:materiales_ids].split(" ")
    for material_id in @materiales
      material = Material.find_by_id(material_id)
      prestamo = Prestamo.new(params[:prestamo])
      prestamo.nuevo = material.nuevo
      prestamo.usado = material.usado
      prestamo.danado = material.danado
      prestamo.dano = material.dano
      prestamo.material_id = material_id
      if !prestamo.save
        error = true
        @prestamo = prestamo
        break
      end
      material.update_attribute(:disponible, false)
    end
    respond_to do |format|
      if !error
        format.html { redirect_to prestamos_url, notice: 'El prestamo se realizo con exito.' }
      else
        format.html { render action: "/prestar" }
      end
    end
  end
end
