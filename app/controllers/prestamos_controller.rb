class PrestamosController < ApplicationController
  def index
    @materiales = Material.all
  end
end
