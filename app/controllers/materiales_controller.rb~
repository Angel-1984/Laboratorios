class MaterialesController < ApplicationController
  # GET /materiales
  # GET /materiales.json
  def index
    @materiales = Material.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @materiales }
    end
  end

  # GET /materiales/1
  # GET /materiales/1.json
  def show
    @material = Material.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @material }
    end
  end

  # GET /materiales/new
  # GET /materiales/new.json
  def new
    @material = Material.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @material }
    end
  end

  # GET /materiales/1/edit
  def edit
    @material = Material.find(params[:id])
  end

  # POST /materiales
  # POST /materiales.json
  def create
    @material = Material.new(params[:material])
    @material.dano = ""
    if params[:estado] == "nuevo"
      @material.nuevo = true
    elsif params[:estado] == "usado"
      @material.usado = true
    else
      @material.danado = true
      @material.dano = params[:material][:dano]
    end

    respond_to do |format|
      if @material.save
        format.html { redirect_to @material, notice: 'Material was successfully created.' }
        format.json { render json: @material, status: :created, location: @material }
      else
        format.html { render action: "new" }
        format.json { render json: @material.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /materiales/1
  # PUT /materiales/1.json
  def update
    @material = Material.find(params[:id])

    respond_to do |format|
      if @material.update_attributes(params[:material])
        @material.update_attribute(:dano, "")
        @material.update_attribute(:nuevo, false)
        @material.update_attribute(:usado, false)
        @material.update_attribute(:danado, false)
        if params[:estado] == "nuevo"
            @material.update_attribute(:nuevo, true)
         elsif params[:estado] == "usado"
            @material.update_attribute(:usado, true)
         else
            @material.update_attribute(:danado, true)
            @material.update_attribute(:dano, params[:material][:dano])
        end
        format.html { redirect_to @material, notice: 'Material was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @material.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /materiales/1
  # DELETE /materiales/1.json
  def destroy
    @material = Material.find(params[:id])
    @material.destroy

    respond_to do |format|
      format.html { redirect_to materiales_url }
      format.json { head :no_content }
    end
  end

  def historial_material
    @material = Material.find_by_id(params[:id])
    @prestamos = @material.prestamos
  end
end
