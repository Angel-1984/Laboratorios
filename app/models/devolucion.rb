class Devolucion < ActiveRecord::Base
  attr_accessible :danado, :dano, :fecha_entrega, :nuevo, :observaciones, :prestamo_id, :usado
  
  belongs_to :prestamo
  
end
