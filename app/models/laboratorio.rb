class Laboratorio < ActiveRecord::Base
  attr_accessible :descripcion, :nombre
  
  has_many :materiales
  
  validates_presence_of :nombre, :message => " no debe de estar en blanco."
end
