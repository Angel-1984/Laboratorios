class CreateDevoluciones < ActiveRecord::Migration
  def change
    create_table :devoluciones do |t|
      t.integer :prestamo_id
      t.datetime :fecha_entrega
      t.boolean :nuevo
      t.boolean :usado
      t.boolean :danado
      t.string :dano
      t.string :observaciones

      t.timestamps
    end
  end
end
