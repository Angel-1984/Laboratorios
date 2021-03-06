class Material < ActiveRecord::Base
  
  belongs_to :laboratorio
  has_many :prestamos

  validates_presence_of :laboratorio_id, :message => "no puede estar en blanco."
  validates_presence_of :codigo, :message => "no puede estar en blanco."
  validates_presence_of :nombre, :message => "no puede estar en blanco."
  validates_uniqueness_of :codigo, :message => "ya esta asignado a otro material."
end
