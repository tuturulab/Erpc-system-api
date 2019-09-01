class EmpresaProducto < ActiveRecord::Migration[5.2]
  def change
    create_table :EmpresaProducto do |t|
      t.belongs_to :Empresa
      t.belongs_to :Producto
      t.timestamps
    end
  end
end
