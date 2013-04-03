class AddDevueltoToPrestamos < ActiveRecord::Migration
  def change
    add_column :prestamos, :devuelto, :boolean, :default => false
  end
end
