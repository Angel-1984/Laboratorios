class CreateMateriales < ActiveRecord::Migration
  def change
    create_table :materiales do |t|
      t.string :nombre
      t.boolean :disponible
      t.text :descripcion
      t.string :codigo
      t.integer :laboratorio_id
      t.boolean :nuevo
      t.boolean :usado
      t.boolean :danado
      t.text :dano

      t.timestamps
    end
  end
end
