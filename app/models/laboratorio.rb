class Laboratorio < ActiveRecord::Base
  attr_accessible :descripcion, :nombre
  
  has_many :materiales
end
