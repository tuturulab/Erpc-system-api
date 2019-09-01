class Producto < ActiveRecord::Migration[5.2]
  def change
    create_table :Producto do |t|
      t.string :nombreProducto
      t.integer :stock
      t.decimal :precio, :precision => 4 ,:scale => 3
      t.belongs_to :Categoria

      t.timestamps


    end
  end
end
