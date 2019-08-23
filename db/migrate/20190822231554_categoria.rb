class Categoria < ActiveRecord::Migration[5.2]
  def change
    create_table :Categoria do |t|
      t.string :nombreCategoria
      t.belongs_to :proveedor
    end
  end
end
