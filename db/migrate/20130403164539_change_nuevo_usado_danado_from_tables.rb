class ChangeNuevoUsadoDanadoFromTables < ActiveRecord::Migration
  def change
    change_column :materiales, :nuevo, :boolean, :default => false
    change_column :materiales, :usado, :boolean, :default => false
    change_column :materiales, :danado, :boolean, :default => false

    change_column :prestamos, :nuevo, :boolean, :default => false
    change_column :prestamos, :usado, :boolean, :default => false
    change_column :prestamos, :danado, :boolean, :default => false

    change_column :devoluciones, :nuevo, :boolean, :default => false
    change_column :devoluciones, :usado, :boolean, :default => false
    change_column :devoluciones, :danado, :boolean, :default => false
  end
end
