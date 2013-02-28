class Prestamo < ActiveRecord::Base
  attr_accessible :danado, :dano, :fecha_prestamo, :laboratorio_id, :material_id, :nuevo, :num_control, :observaciones, :usado
  
  belongs_to :material
  belongs_to :laboratorio
  
end
