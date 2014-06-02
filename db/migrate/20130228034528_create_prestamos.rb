class CreatePrestamos < ActiveRecord::Migration
  def change
    create_table :prestamos do |t|
      t.integer :material_id
      t.string :num_control
      t.string :observaciones
      t.datetime :fecha_prestamo
      t.boolean :nuevo
      t.boolean :usado
      t.boolean :danado
      t.string :dano
      t.integer :laboratorio_id

      t.timestamps
    end
  end
end
