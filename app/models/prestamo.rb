class Prestamo < ActiveRecord::Base
  attr_accessible :danado, :dano, :fecha_prestamo, :laboratorio_id, :material_id, :nuevo, :num_control, :observaciones, :usado, :devuelto
  
  belongs_to :material
  belongs_to :laboratorio
  has_many :devoluciones
  
  validates_numericality_of :num_control, :message => " no puede estar vacio o llevar letras y/o simbolos."
  
end
