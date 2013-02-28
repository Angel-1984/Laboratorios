class Material < ActiveRecord::Base
  attr_accessible :codigo, :danado, :dano, :descripcion, :disponible, :laboratorio_id, :nombre, :nuevo, :usado
  
  belongs_to :laboratorio
end
