class VentaProducto < ActiveRecord::Migration[5.2]
  def change
    create_table :VentaProducto do |t|
      t.belongs_to :Producto
      t.belongs_to :Venta
      t.timestamps
    end
  end
end
