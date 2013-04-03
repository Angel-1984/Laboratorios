class Material < ActiveRecord::Base
  attr_accessible :codigo, :danado, :dano, :descripcion, :disponible, :laboratorio_id, :nombre, :nuevo, :usado
  
  belongs_to :laboratorio

  validates_presence_of :laboratorio_id, :message => "no puede estar en blanco."
  validates_presence_of :codigo, :message => "no puede estar en blanco."
  validates_presence_of :nombre, :message => "no puede estar en blanco."
  validates_uniqueness_of :codigo, :message => "ya esta asignado a otro material."
end
